#!/usr/bin/env bash
# Push this folder to aau-cph-sw5/semester-docs.
# Safe to run more than once. Handles the case where the repository was created
# on GitHub with its own README and LICENCE.
set -euo pipefail
cd "$(dirname "$0")/.."

ORG="aau-cph-sw5"
REPO="semester-docs"
REMOTE="https://github.com/${ORG}/${REPO}.git"

NAME=$(git config user.name  2>/dev/null || echo "AAU 5th semester")
MAIL=$(git config user.email 2>/dev/null || echo "noreply@cs.aau.dk")

# 1. a repository here, with our content committed
git init -q 2>/dev/null || true
git symbolic-ref HEAD refs/heads/main 2>/dev/null || true

# clean up anything a previous failed run left behind
git rebase --abort  >/dev/null 2>&1 || true
git merge  --abort  >/dev/null 2>&1 || true
git cherry-pick --abort >/dev/null 2>&1 || true

git add -A
if ! git diff --cached --quiet 2>/dev/null; then
  git -c user.name="$NAME" -c user.email="$MAIL" \
      commit -q -m "Metro product backlogs, first refinement"
elif ! git rev-parse HEAD >/dev/null 2>&1; then
  git -c user.name="$NAME" -c user.email="$MAIL" \
      commit -q --allow-empty -m "Metro product backlogs, first refinement"
fi
git branch -M main

# 2. point at the remote
git remote remove origin >/dev/null 2>&1 || true
git remote add origin "$REMOTE"

# 3. bring in whatever GitHub already put there, keeping our version of any
#    file that exists on both sides, and keeping files that exist only there
if git fetch -q origin main 2>/dev/null; then
  echo "  merging the files GitHub created when the repository was made"
  git -c user.name="$NAME" -c user.email="$MAIL" \
      merge origin/main --allow-unrelated-histories -X ours --no-edit -q \
    || {
      echo
      echo "  The merge did not resolve cleanly."
      echo "  Run these two lines, then start again:"
      echo "      git -C \"$(pwd)\" merge --abort"
      echo "      git -C \"$(pwd)\" push -u origin main --force-with-lease"
      exit 1
    }
fi

# 4. push
git push -u origin main
echo
echo "  pushed to https://github.com/${ORG}/${REPO}"
