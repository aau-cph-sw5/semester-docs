#!/usr/bin/env bash
# Create one GitHub Project per case, configure it as a scrum board, and place
# that case's issues on it with Size, Priority, Track, Readiness and Sprint set.
# Run after create-issues.sh. Safe to run more than once.
#   ./create-projects.sh           all four
#   CASE=D ./create-projects.sh    one case
set -uo pipefail
cd "$(dirname "$0")"

ORG="aau-cph-sw5"
FILTER="${CASE:-}"
TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT

STATUS_COLUMNS="Backlog,Ready,In progress,In review,Blocked,Done"
SIZE_OPTIONS="XS,S,M,L,XL,XXL"
PRIORITY_OPTIONS="Must,Should,Could"
TRACK_OPTIONS="frontend,backend,mobile,cross-team"
READINESS_OPTIONS="Ready,Needs refinement,Blocked"
SPRINT_OPTIONS="Sprint 1,Sprint 2,Sprint 3,Sprint 4,Sprint 5,Sprint 6,Sprint 7,Unscheduled"

command -v gh >/dev/null || { echo "gh CLI not found"; exit 1; }

title_for() {
  case "$1" in
    A) echo "Case A. Emergency Scenarios" ;;
    B) echo "Case B. Steward Localization" ;;
    C) echo "Case C. Operational Restrictions" ;;
    D) echo "Case D. DID Master" ;;
  esac
}

field_id() {
  gh api graphql -f query='query($p:ID!){node(id:$p){... on ProjectV2{fields(first:50){nodes{
      ... on ProjectV2FieldCommon{id name}}}}}}' -f p="$1" \
    --jq ".data.node.fields.nodes[] | select(.name==\"$2\") | .id" 2>/dev/null
}

dump_options() {   # project_id, field name, outfile   -> "option name<TAB>id"
  gh api graphql -f query='query($p:ID!){node(id:$p){... on ProjectV2{fields(first:50){nodes{
      ... on ProjectV2SingleSelectField{name options{id name}}}}}}}' -f p="$1" \
    --jq ".data.node.fields.nodes[] | select(.name==\"$2\") | .options[] | [.name,.id] | @tsv" \
    > "$3" 2>/dev/null || : > "$3"
}

lookup() { awk -F'\t' -v n="$2" '$1==n {print $2; exit}' "$1"; }

options_literal() {
  OLD=$IFS; IFS=','; out=""
  for n in $1; do out="$out{name:\"$n\",color:GRAY,description:\"\"},"; done
  IFS=$OLD
  printf '%s' "${out%,}"
}

ensure_single_select() {  # project_id, name, options
  fid=$(field_id "$1" "$2")
  lit=$(options_literal "$3")
  if [ -n "$fid" ]; then
    gh api graphql -f query="mutation{updateProjectV2Field(input:{fieldId:\"$fid\",singleSelectOptions:[$lit]}){projectV2Field{... on ProjectV2SingleSelectField{id}}}}" >/dev/null 2>&1
  else
    gh api graphql -f query="mutation{createProjectV2Field(input:{projectId:\"$1\",dataType:SINGLE_SELECT,name:\"$2\",singleSelectOptions:[$lit]}){projectV2Field{... on ProjectV2SingleSelectField{id}}}}" >/dev/null 2>&1
  fi
}

set_select() {  # project_id, item_id, field_id, option_id
  [ -z "$4" ] && return 0
  [ -z "$3" ] && return 0
  gh api graphql -f query="mutation{updateProjectV2ItemFieldValue(input:{projectId:\"$1\",itemId:\"$2\",fieldId:\"$3\",value:{singleSelectOptionId:\"$4\"}}){projectV2Item{id}}}" >/dev/null 2>&1
}

for KASE in A B C D; do
  if [ -n "$FILTER" ] && [ "$KASE" != "$FILTER" ]; then continue; fi
  REPO=$(awk -F'\t' -v k="$KASE" 'NR>1 && $1==k {print $2}' repos.tsv)
  [ -z "$REPO" ] && { echo "no repo for case $KASE"; continue; }
  TITLE=$(title_for "$KASE")

  echo
  echo "=== $TITLE"

  PNUM=$(gh project list --owner "$ORG" --format json \
         --jq ".projects[] | select(.title==\"$TITLE\") | .number" 2>/dev/null | head -1)
  if [ -z "$PNUM" ]; then
    gh project create --owner "$ORG" --title "$TITLE" >/dev/null 2>&1
    PNUM=$(gh project list --owner "$ORG" --format json \
           --jq ".projects[] | select(.title==\"$TITLE\") | .number" 2>/dev/null | head -1)
  fi
  if [ -z "$PNUM" ]; then echo "    could not create the project"; continue; fi
  PID=$(gh project view "$PNUM" --owner "$ORG" --format json --jq '.id' 2>/dev/null)
  echo "    project #$PNUM"

  gh project edit "$PNUM" --owner "$ORG" --visibility PUBLIC >/dev/null 2>&1 || true

  echo "    configuring fields"
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

  dump_options "$PID" "Status"    "$TMP/o_status"
  dump_options "$PID" "Size"      "$TMP/o_size"
  dump_options "$PID" "Priority"  "$TMP/o_prio"
  dump_options "$PID" "Track"     "$TMP/o_track"
  dump_options "$PID" "Readiness" "$TMP/o_ready"
  dump_options "$PID" "Sprint"    "$TMP/o_sprint"

  O_BACKLOG=$(lookup "$TMP/o_status" "Backlog")
  O_BLOCKED=$(lookup "$TMP/o_status" "Blocked")

  echo "    reading issues from $REPO"
  gh issue list --repo "$REPO" --state all --limit 500 --json title,url \
     --jq '.[] | [.title,.url] | @tsv' > "$TMP/issues" 2>/dev/null || : > "$TMP/issues"

  n=0; miss=0
  awk -F'\t' -v k="$KASE" 'NR>1 && $2==k' fields.tsv > "$TMP/rows"
  while IFS=$'\t' read -r id kase size prio track ready epic sprint; do
    [ -z "$id" ] && continue
    url=$(awk -F'\t' -v i="$id " 'index($1,i)==1 {print $2; exit}' "$TMP/issues")
    if [ -z "$url" ]; then
      echo "    ! $id has no issue yet"; miss=$((miss+1)); continue
    fi
    item=$(gh project item-add "$PNUM" --owner "$ORG" --url "$url" \
           --format json --jq '.id' 2>/dev/null)
    if [ -z "$item" ]; then echo "    ! $id could not be added"; miss=$((miss+1)); continue; fi
    set_select "$PID" "$item" "$F_SIZE"   "$(lookup "$TMP/o_size"   "$size")"
    set_select "$PID" "$item" "$F_PRIO"   "$(lookup "$TMP/o_prio"   "$prio")"
    set_select "$PID" "$item" "$F_TRACK"  "$(lookup "$TMP/o_track"  "$track")"
    set_select "$PID" "$item" "$F_READY"  "$(lookup "$TMP/o_ready"  "$ready")"
    set_select "$PID" "$item" "$F_SPRINT" "$(lookup "$TMP/o_sprint" "$sprint")"
    if [ "$ready" = "Blocked" ]; then
      set_select "$PID" "$item" "$F_STATUS" "$O_BLOCKED"
    else
      set_select "$PID" "$item" "$F_STATUS" "$O_BACKLOG"
    fi
    n=$((n+1)); echo "    $id"
  done < "$TMP/rows"

  echo "    $n items placed, $miss missing"
  echo "    https://github.com/orgs/$ORG/projects/$PNUM"
done

echo
echo "One manual step per project, because GitHub has no API for views:"
echo "  open the project, click New view, choose Board, group by Status."
