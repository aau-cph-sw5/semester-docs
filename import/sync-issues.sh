#!/usr/bin/env bash
# Bring existing GitHub issues back in line with this repository.
# Updates the body from import/bodies, reconciles labels and milestone against
# import/issues.tsv, and closes any item whose status is status:dropped.
# Issues that do not exist yet are left to create-issues.sh.
#   ./sync-issues.sh            all four products
#   CASE=A ./sync-issues.sh     one product
#   DRY=1 ./sync-issues.sh      print what would change and do nothing
set -uo pipefail
cd "$(dirname "$0")"
FILTER="${CASE:-}"; DRY="${DRY:-}"
TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
updated=0; unchanged=0; missing=0; failed=0

for KASE in A B C D; do
  if [ -n "$FILTER" ] && [ "$KASE" != "$FILTER" ]; then continue; fi
  repo=$(awk -F'\t' -v k="$KASE" 'NR>1 && $1==k {print $2}' repos.tsv)
  [ -z "$repo" ] && { echo "no repo for case $KASE"; continue; }
  echo "sync -> $repo"

  gh issue list --repo "$repo" --state all --limit 500 \
     --json number,title,labels,body \
     --jq '.[] | [(.title|split(" ")[0]), (.number|tostring), ([.labels[].name]|sort|join(","))] | @tsv' \
     > "$TMP/existing" 2>/dev/null || : > "$TMP/existing"

  awk -F'\t' -v k="$KASE" 'NR>1 && $2==k' issues.tsv > "$TMP/rows"
  while IFS=$'\t' read -r id kase title labels milestone body; do
    [ -z "$id" ] && continue
    line=$(awk -F'\t' -v i="$id" '$1==i {print; exit}' "$TMP/existing")
    if [ -z "$line" ]; then echo "  ? $id  no issue yet"; missing=$((missing+1)); continue; fi
    num=$(printf '%s' "$line" | cut -f2)
    have=$(printf '%s' "$line" | cut -f3)
    want=$(printf '%s' "$labels" | tr ',' '\n' | sort | paste -sd, -)

    add=$(comm -13 <(printf '%s' "$have" | tr ',' '\n' | sort) <(printf '%s' "$want" | tr ',' '\n' | sort) | paste -sd, -)
    rm_=$(comm -23 <(printf '%s' "$have" | tr ',' '\n' | sort) <(printf '%s' "$want" | tr ',' '\n' | sort) | paste -sd, -)

    set -- --repo "$repo" --body-file "$body"
    [ -n "$add" ] && set -- "$@" --add-label "$add"
    [ -n "$rm_" ] && set -- "$@" --remove-label "$rm_"
    if [ -n "$milestone" ] && [ "$milestone" != "-" ]; then set -- "$@" --milestone "$milestone"; fi

    if [ -n "$DRY" ]; then
      echo "  ~ $id (#$num) body${add:+ +$add}${rm_:+ -$rm_}"; updated=$((updated+1)); continue
    fi
    if gh issue edit "$num" "$@" >/dev/null 2>"$TMP/err"; then
      echo "  ~ $id (#$num)"; updated=$((updated+1))
    else
      echo "  ! $id  $(head -1 "$TMP/err")"; failed=$((failed+1)); continue
    fi
    case ",$labels," in
      *,status:dropped,*)
        gh issue close "$num" --repo "$repo" --reason "not planned" \
          --comment "Removed from scope by Metro Service, August 2026. The item is kept in the backlog for traceability; see CLARIFICATIONS.md." \
          >/dev/null 2>&1 && echo "    closed $id" ;;
    esac
  done < "$TMP/rows"
done

echo
echo "issues: $updated updated, $missing not present, $failed failed"
[ "$failed" -gt 0 ] && exit 1
exit 0
