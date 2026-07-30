#!/usr/bin/env bash
# Create one GitHub issue per backlog item, in the repository for its case.
# Safe to run more than once: items that already exist are skipped.
#   ./create-issues.sh            all four products
#   CASE=D ./create-issues.sh     one product
set -uo pipefail
cd "$(dirname "$0")"
FILTER="${CASE:-}"
TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
created=0; skipped=0; failed=0

for KASE in A B C D; do
  if [ -n "$FILTER" ] && [ "$KASE" != "$FILTER" ]; then continue; fi
  repo=$(awk -F'\t' -v k="$KASE" 'NR>1 && $1==k {print $2}' repos.tsv)
  if [ -z "$repo" ]; then echo "no repo for case $KASE"; continue; fi
  echo "issues -> $repo"

  gh issue list --repo "$repo" --state all --limit 500 --json title \
     --jq '.[].title' 2>/dev/null | awk '{print $1}' > "$TMP/existing" || : > "$TMP/existing"
  awk -F'\t' -v k="$KASE" 'NR>1 && $2==k' issues.tsv > "$TMP/rows"

  while IFS=$'\t' read -r id kase title labels milestone body; do
    [ -z "$id" ] && continue
    if grep -qx "$id" "$TMP/existing" 2>/dev/null; then
      echo "  = $id already there"; skipped=$((skipped+1)); continue
    fi
    set -- --repo "$repo" --title "$id  $title" --body-file "$body"
    OLD=$IFS; IFS=','
    for l in $labels; do set -- "$@" --label "$l"; done
    IFS=$OLD
    if [ -n "$milestone" ]; then set -- "$@" --milestone "$milestone"; fi
    if gh issue create "$@" >/dev/null 2>"$TMP/err"; then
      echo "  + $id"; created=$((created+1))
    else
      echo "  ! $id  $(head -1 "$TMP/err")"; failed=$((failed+1))
    fi
  done < "$TMP/rows"
done

echo
echo "issues: $created created, $skipped already present, $failed failed"
[ "$failed" -gt 0 ] && exit 1
exit 0
