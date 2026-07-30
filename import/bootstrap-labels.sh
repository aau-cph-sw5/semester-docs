#!/usr/bin/env bash
# Create every label used by this backlog, in each product repository.
set -euo pipefail
cd "$(dirname "$0")"
tail -n +2 repos.tsv | while IFS=$'\t' read -r kase repo; do
  [ -z "$repo" ] && continue
  echo "labels -> $repo"
  tail -n +2 labels.tsv | while IFS=$'\t' read -r name color desc; do
    [ -z "$name" ] && continue
    gh label create "$name" --repo "$repo" --color "$color" --description "$desc" --force >/dev/null
  done
done
echo "labels done"
