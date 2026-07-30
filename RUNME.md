# How to build the GitHub environment

Everything below happens on your own Mac. Nothing runs in the cloud, and your
GitHub password never leaves your machine.

There are two ways. The first is easier.

---

## The easy way

1. Unzip `metro-backlog.zip` if you have not already. You should see a folder
   called `metro-backlog` containing `START-HERE.command`.

2. **Right-click** `START-HERE.command` and choose **Open**. Right-click rather
   than double-click, because macOS blocks downloaded scripts on a plain
   double-click. macOS will ask whether you are sure. Say yes.

3. A black Terminal window opens and the script talks you through the rest. It
   will:
   - check whether the GitHub command line tool is installed, and offer to
     install it if not,
   - open your browser so you can sign in to GitHub,
   - push the backlogs, create the labels, the sprints, the 103 issues, and the
     four Project boards.

4. It takes fifteen to twenty minutes, almost all of it waiting on GitHub.
   You can leave it running.

---

## The manual way

Open **Terminal** (press Cmd+Space, type Terminal, press Return) and paste these
lines one at a time.

Install the GitHub command line tool, if you do not have it:

```bash
brew install gh
```

No Homebrew? Download the installer instead from
<https://github.com/cli/cli/releases/latest>, choose the file ending in
`macOS_arm64.pkg` on an Apple Silicon Mac or `macOS_amd64.pkg` on an Intel one,
and double-click it.

Sign in. Choose GitHub.com, then HTTPS, then "Login with a web browser":

```bash
gh auth login
gh auth refresh -s project -s read:project
```

Go to the folder. The easiest way to get the path right is to type `cd ` with a
space, then drag the `metro-backlog` folder from Finder into the Terminal
window, then press Return:

```bash
cd /path/to/metro-backlog
```

Then run the four steps:

```bash
./import/push-docs.sh          # backlogs into semester-docs
./import/bootstrap-labels.sh   # ~45 labels per repository
./import/create-milestones.sh  # Sprint 1 to 7
./import/create-issues.sh      # 103 issues, about 5 minutes
./import/create-projects.sh    # the four boards, about 10 minutes
```

Every one of these is safe to run twice. If something fails halfway, run it
again.

---

## The one step nobody can script

GitHub has no API for creating Project *views*, so each of the four boards needs
this done by hand. It takes about ten seconds each.

1. Open <https://github.com/orgs/aau-cph-sw5/projects>
2. Click a project
3. Click **New view**
4. Choose **Board**
5. In the view's menu, set **Group by** to **Status**

The columns will be Backlog, Ready, In progress, In review, Blocked and Done,
and every item will already be sitting in the right one.

---

## If something goes wrong

Copy the error message out of Terminal and send it back. The most common
problems are:

| What you see | What it means |
|---|---|
| `gh: command not found` | The GitHub tool is not installed. See above. |
| `HTTP 403` or `Resource not accessible` | The Projects permission is missing. Run `gh auth refresh -s project -s read:project`. |
| `no issue for MET-...` | `create-issues.sh` has not finished. Run it again, then re-run `create-projects.sh`. |
| `permission denied` | Run `chmod +x import/*.sh START-HERE.command` and try again. |
