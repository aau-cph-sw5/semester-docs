#!/bin/bash
# Double-click this file, or run it from Terminal.
# It sets up the whole GitHub environment for the 5th semester.
cd "$(dirname "$0")"

echo
echo "=============================================="
echo "  AAU 5th semester, Metro Service"
echo "  GitHub environment setup"
echo "=============================================="
echo

# ---------- 1. Is the GitHub CLI installed? ----------
if ! command -v gh >/dev/null 2>&1; then
  echo "The GitHub command line tool (gh) is not installed."
  echo
  if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is available. Installing gh now."
    brew install gh || { echo "Install failed. Install gh manually and run this again."; exit 1; }
  else
    echo "Install it in one of these two ways, then run this file again:"
    echo
    echo "  a) Download the macOS installer:"
    echo "     https://github.com/cli/cli/releases/latest"
    echo "     Pick the file ending in  macOS_arm64.pkg  (or amd64 on an Intel Mac)"
    echo "     and double-click it."
    echo
    echo "  b) Or, if you use Homebrew:  brew install gh"
    echo
    read -r -p "Press Return to open the download page in your browser. "
    open "https://github.com/cli/cli/releases/latest"
    exit 1
  fi
fi
echo "GitHub CLI found: $(gh --version | head -1)"
echo

# ---------- 2. Sign in ----------
if ! gh auth status >/dev/null 2>&1; then
  echo "You are not signed in to GitHub yet."
  echo "A browser window will open. Choose:"
  echo "    GitHub.com  ->  HTTPS  ->  Login with a web browser"
  echo
  read -r -p "Press Return to start. "
  gh auth login || { echo "Sign-in did not complete. Run this file again."; exit 1; }
fi
echo "Signed in as: $(gh api user --jq .login)"
echo

# ---------- 3. Permission for Projects ----------
if gh auth status 2>&1 | grep -q "'project'"; then
  echo "Project permission already granted."
else
  echo "Adding the permission needed to create Project boards."
  echo "Your browser may open again. Approve it, then come back here."
  gh auth refresh -s project -s read:project || true
fi
echo

# ---------- 4. Do the work ----------
echo "----------------------------------------------"
echo "Step 1 of 6: pushing the backlogs to semester-docs"
echo "----------------------------------------------"
./import/push-docs.sh || { echo "Failed. Copy the error above and send it to Claude."; read -r -p "Press Return to close. "; exit 1; }

echo
echo "----------------------------------------------"
echo "Step 2 of 6: creating labels"
echo "----------------------------------------------"
./import/bootstrap-labels.sh || { echo; echo "Labels failed. Copy the error above and send it to Claude."; read -r -p "Press Return to close. "; exit 1; }

echo
echo "----------------------------------------------"
echo "Step 3 of 6: creating Sprint 1 to 7 milestones"
echo "----------------------------------------------"
./import/create-milestones.sh || { echo; echo "Milestones failed. Copy the error above and send it to Claude."; read -r -p "Press Return to close. "; exit 1; }

echo
echo "----------------------------------------------"
echo "Step 4 of 6: creating 103 issues"
echo "This is the slow part. Roughly five minutes."
echo "----------------------------------------------"
./import/create-issues.sh || { echo; echo "Some issues failed. Copy the errors above and send them to Claude."; read -r -p "Press Return to close. "; exit 1; }

echo
echo "----------------------------------------------"
echo "Step 5 of 6: building the four Project boards"
echo "Another ten minutes or so."
echo "----------------------------------------------"
./import/create-projects.sh

echo
echo "----------------------------------------------"
echo "Step 6 of 6: installing templates and READMEs"
echo "into the four product repositories"
echo "----------------------------------------------"
./import/push-templates.sh || echo "Templates partly failed. Not fatal; send the errors to Claude."

echo
echo "=============================================="
echo "  Done."
echo "=============================================="
echo
echo "Your organisation:  https://github.com/aau-cph-sw5"
echo "Your boards:        https://github.com/orgs/aau-cph-sw5/projects"
echo
echo "One last thing, by hand, in each of the four projects:"
echo "  click 'New view', choose 'Board', then group by 'Status'."
echo "  GitHub has no way to script that part."
echo
read -r -p "Press Return to close this window. "
