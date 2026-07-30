#!/usr/bin/env bash
# Create one GitHub Project per case, configure it as a scrum board, and populate
# it with that case's issues, with Size, Priority, Track, Readiness and Sprint set.
#
# Run AFTER create-issues.sh, because a Project can only hold issues that exist.
#
#   ./create-projects.sh              # all four
#   CASE=D ./create-projects.sh       # one case
#
# Requires: gh CLI authenticated with the "project" scope.
#   gh auth refresh -s project -s read:project
set -euo pipefail
cd "$(dirname "$0")"

ORG="aau-cph-sw5"
FILTER="${CASE:-}"

STATUS_COLUMNS="Backlog,Ready,In progress,In review,Blocked,Done"
SIZE_OPTIONS="XS,S,M,L,XL,XXL"
PRIORITY_OPTIONS="Must,Should,Could"
TRACK_OPTIONS="frontend,backend,mobile,cross-team"
READINESS_OPTIONS="Ready,Needs refinement,Blocked"
SPRINT_OPTIONS="Sprint 1,Sprint 2,Sprint 3,Sprint 4,Sprint 5,Sprint 6,Sprint 7,Unscheduled"

command -v gh >/dev/null || { echo "gh CLI not found"; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "run: gh auth login"; exit 1; }

OWNER_ID=$(gh api graphql -f query='query($l:String!){organization(login:$l){id}}' \
  -f l="$ORG" --jq '.data.organization.id')

title_for() {
  case "$1" in
    A) echo "Case A. Emergency Scenarios" ;;
    B) echo "Case B. Steward Localization" ;;
    C) echo "Case C. Operational Restrictions" ;;
    D) echo "Case D. DID Master" ;;
  esac
}

# find an existing project by title, or create it; echoes "number<TAB>id"
ensure_project() {
  local title="$1" num id
  num=$(gh project list --owner "$ORG" --format json \
        --jq ".projects[] | select(.title==\"$title\") | .number" 2>/dev/null | head -1)
  if [ -z "$num" ]; then
    gh project create --owner "$ORG" --title "$title" >/dev/null
    num=$(gh project list --owner "$ORG" --format json \
          --jq ".projects[] | select(.title==\"$title\") | .number" | head -1)
  fi
  id=$(gh project view "$num" --owner "$ORG" --format json --jq '.id')
  printf '%s\t%s\n' "$num" "$id"
}

field_id() {  # project_id, field name
  gh api graphql -f query='query($p:ID!){node(id:$p){... on ProjectV2{fields(first:50){nodes{
      ... on ProjectV2FieldCommon{id name}}}}}}' -f p="$1" \
    --jq ".data.node.fields.nodes[] | select(.name==\"$2\") | .id"
}

option_id() { # project_id, field name, option name
  gh api graphql -f query='query($p:ID!){node(id:$p){... on ProjectV2{fields(first:50){nodes{
      ... on ProjectV2SingleSelectField{id name options{id name}}}}}}}' -f p="$1" \
    --jq ".data.node.fields.nodes[] | select(.name==\"$2\") | .options[] | select(.name==\"$3\") | .id"
}

load_options() { # project_id, field name -> lines of "name<TAB>id"
  gh api graphql -f query='query($p:ID!){node(id:$p){... on ProjectV2{fields(first:50){nodes{
      ... on ProjectV2SingleSelectField{name options{id name}}}}}}}' -f p="$1" \
    --jq ".data.node.fields.nodes[] | select(.name==\"$2\") | .options[] | [.name,.id] | @tsv"
}

build_options_json() { # comma separated names -> GraphQL single-select option list
  local IFS=','; local out="" n
  for n in $1; do out+="{name:\"$n\",color:GRAY,description:\"\"},"; done
  printf '%s' "${out%,}"
}

ensure_single_select() { # project_id, name, options
  local pid="$1" name="$2" opts="$3" fid list
  fid=$(field_id "$pid" "$name" || true)
  list=$(build_options_json "$opts")
  if [ -n "$fid" ]; then
    gh api graphql -f query="mutation{updateProjectV2Field(input:{fieldId:\"$fid\",singleSelectOptions:[$list]}){projectV2Field{... on ProjectV2SingleSelectField{id}}}}" >/dev/null
  else
    gh api graphql -f query="mutation{createProjectV2Field(input:{projectId:\"$pid\",dataType:SINGLE_SELECT,name:\"$name\",singleSelectOptions:[$list]}){projectV2Field{... on ProjectV2SingleSelectField{id}}}}" >/dev/null
  fi
}

set_select() { # project_id, item_id, field_id, option_id
  [ -z "$4" ] && return 0
  gh api graphql -f query="mutation{updateProjectV2ItemFieldValue(input:{
    projectId:\"$1\",itemId:\"$2\",fieldId:\"$3\",
    value:{singleSelectOptionId:\"$4\"}}){projectV2Item{id}}}" >/dev/null
}

for KASE in A B C D; do
  [ -n "$FILTER" ] && [ "$KASE" != "$FILTER" ] && continue
  REPO=$(awk -F'\t' -v k="$KASE" 'NR>1 && $1==k {print $2}' repos.tsv)
  [ -z "$REPO" ] && { echo "no repo for case $KASE"; continue; }
  TITLE=$(title_for "$KASE")

  echo
  echo "=== $TITLE  ($REPO)"
  read -r PNUM PID < <(ensure_project "$TITLE")
  echo "    project #$PNUM"

  gh project edit "$PNUM" --owner "$ORG" --visibility PUBLIC >/dev/null 2>&1 || true

  echo "    fields"
  ensure_single_select "$PID" "Status"    "$STATUS_COLUMNS"
  ensure_single_select "$PID" "Size"      "$SIZE_OPTIONS"
  ensure_single_select "$PID" "Priority"  "$PRIORITY_OPTIONS"
  ensure_single_select "$PID" "Track"     "$TRACK_OPTIONS"
  ensure_single_select "$PID" "Readiness" "$READINESS_OPTIONS"
  ensure_single_select "$PID" "Sprint"    "$SPRINT_OPTIONS"

  F_STATUS=$(field_id "$PID" "Status")
  F_SIZE=$(field_id "$PID" "Size")
  F_PRIO=$(field_id "$PID" "Priority")
  F_TRACK=$(field_id "$PID" "Track")
  F_READY=$(field_id "$PID" "Readiness")
  F_SPRINT=$(field_id "$PID" "Sprint")
  declare -A OPT_SIZE OPT_PRIO OPT_TRACK OPT_READY OPT_SPRINT OPT_STATUS
  while IFS=$'\t' read -r k v; do OPT_SIZE["$k"]="$v";   done < <(load_options "$PID" "Size")
  while IFS=$'\t' read -r k v; do OPT_PRIO["$k"]="$v";   done < <(load_options "$PID" "Priority")
  while IFS=$'\t' read -r k v; do OPT_TRACK["$k"]="$v";  done < <(load_options "$PID" "Track")
  while IFS=$'\t' read -r k v; do OPT_READY["$k"]="$v";  done < <(load_options "$PID" "Readiness")
  while IFS=$'\t' read -r k v; do OPT_SPRINT["$k"]="$v"; done < <(load_options "$PID" "Sprint")
  while IFS=$'\t' read -r k v; do OPT_STATUS["$k"]="$v"; done < <(load_options "$PID" "Status")

  echo "    indexing issues"
  declare -A ISSUE_URL
  while IFS=$'\t' read -r t u; do ISSUE_URL["${t%% *}"]="$u"; done < <(
    gh issue list --repo "$REPO" --state all --limit 400 --json title,url --jq '.[] | [.title,.url] | @tsv')

  echo "    adding items"
  n=0
  while IFS=$'\t' read -r id kase size prio track ready epic sprint; do
    [ "$kase" != "$KASE" ] && continue
    # the issue whose title starts with this PBI id
    url="${ISSUE_URL[$id]:-}"
    if [ -z "$url" ]; then echo "    ! no issue for $id (run create-issues.sh first)"; continue; fi
    item=$(gh project item-add "$PNUM" --owner "$ORG" --url "$url" --format json --jq '.id')
    set_select "$PID" "$item" "$F_SIZE"   "${OPT_SIZE[$size]:-}"
    set_select "$PID" "$item" "$F_PRIO"   "${OPT_PRIO[$prio]:-}"
    set_select "$PID" "$item" "$F_TRACK"  "${OPT_TRACK[$track]:-}"
    set_select "$PID" "$item" "$F_READY"  "${OPT_READY[$ready]:-}"
    set_select "$PID" "$item" "$F_SPRINT" "${OPT_SPRINT[$sprint]:-}"
    if [ "$ready" = "Blocked" ]; then
      set_select "$PID" "$item" "$F_STATUS" "${OPT_STATUS[Blocked]:-}"
    else
      set_select "$PID" "$item" "$F_STATUS" "${OPT_STATUS[Backlog]:-}"
    fi
    n=$((n+1)); echo "    $id"
  done < <(tail -n +2 fields.tsv)
  echo "    $n items placed"
  echo "    https://github.com/orgs/$ORG/projects/$PNUM"
done

echo
echo "Projects built. One manual step per project, because GitHub has no API for views:"
echo "  open the project, click New view, choose Board, group by Status."
echo "  Optionally add a second view: Table, grouped by Sprint, for backlog planning."
