#!/usr/bin/env bash
# Create one GitHub issue per PBI, in the repository for its case.
# Usage:  ./create-issues.sh          (all four products)
#         CASE=D ./create-issues.sh   (one product)
# Run bootstrap-labels.sh and create-milestones.sh first.
set -euo pipefail
cd "$(dirname "$0")"
FILTER="${CASE:-}"
declare -A REPO
while IFS=$'\t' read -r kase repo; do REPO["$kase"]="$repo"; done < <(tail -n +2 repos.tsv)
tail -n +2 issues.tsv | while IFS=$'\t' read -r id kase title labels milestone body; do
  [ -z "$id" ] && continue
  if [ -n "$FILTER" ] && [ "$kase" != "$FILTER" ]; then continue; fi
  repo="${REPO[$kase]}"
  args=(--repo "$repo" --title "${id} · ${title}" --body-file "$body")
  IFS=',' read -ra L <<< "$labels"
  for l in "${L[@]}"; do args+=(--label "$l"); done
  [ -n "$milestone" ] && args+=(--milestone "$milestone")
  gh issue create "${args[@]}" >/dev/null
  echo "created ${id} -> ${repo}"
done
echo "done"
