#!/usr/bin/env bash
# Create Sprint 1..7 milestones in each product repository.
set -euo pipefail
cd "$(dirname "$0")"
tail -n +2 repos.tsv | while IFS=$'\t' read -r kase repo; do
  [ -z "$repo" ] && continue
  for i in 1 2 3 4 5 6 7; do
    gh api "repos/${repo}/milestones" -f title="Sprint ${i}" \
      -f description="Two-week sprint ${i} of 7" >/dev/null 2>&1 || true
  done
  echo "milestones -> $repo"
done
echo "milestones done"
