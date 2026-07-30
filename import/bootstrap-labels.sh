#!/usr/bin/env bash
# Create every label used by this backlog, in each product repository.
# Safe to run more than once.
set -uo pipefail
cd "$(dirname "$0")"
ok=0; bad=0
while IFS=$'\t' read -r kase repo; do
  [ -z "${repo:-}" ] && continue
  echo "labels -> $repo"
  while IFS=$'\t' read -r name color desc; do
    [ -z "${name:-}" ] && continue
    if gh label create "$name" --repo "$repo" --color "$color" \
         --description "$desc" --force >/dev/null 2>/tmp/lbl.err; then
      ok=$((ok+1))
    else
      bad=$((bad+1)); echo "  ! $name  $(head -1 /tmp/lbl.err)"
    fi
  done < <(tail -n +2 labels.tsv)
done < <(tail -n +2 repos.tsv)
echo "labels: $ok created or updated, $bad failed"
[ "$bad" -gt 0 ] && exit 1
exit 0
