#!/usr/bin/env bash
# One command to build the whole environment.
#   ./import/setup.sh
# Requires: gh CLI authenticated as an owner of aau-cph-sw5 (run: gh auth login).
set -euo pipefail
cd "$(dirname "$0")"
./bootstrap-labels.sh
./create-milestones.sh
./create-issues.sh
./create-projects.sh
echo
echo "Done. Issues are in:"
cut -f2 repos.tsv | tail -n +2 | sed 's|^|  https://github.com/|'
