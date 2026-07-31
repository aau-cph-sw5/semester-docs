# Contributing

How work moves from a backlog item to merged code on this semester. If you read
one document before you write any code, read this one.

---

## The shape of the work

Each product has a backlog of items with identifiers like `MET-B-007`. Every item
is a GitHub issue in the product repository and a card on the product board. The
identifier is the thread that ties the backlog document, the issue, the branch,
the commit and the pull request together. Use it everywhere.

An item moves through six states, which are the columns on the board.

**Backlog** means nobody is working on it. **Ready** means it has been refined,
its acceptance criteria can each fail, and a team could pull it tomorrow.
**In progress** means someone is building it. **In review** means there is an open
pull request. **Blocked** means it cannot be finished until somebody outside the
team answers a question. **Done** means merged, with every acceptance criterion
demonstrated rather than described.

Only pull an item into a sprint if it is Ready. If it is not Ready, refining it is
itself work worth doing, and worth saying out loud at planning.

## Before you start an item

Read the whole issue, including the Context section. The context usually explains
why the obvious approach is wrong, and it often records something the source
material got confused about.

Check the Dependencies section. If the item is blocked by another team's work, go
and talk to that team before you start, not after. Roughly a third of the items on
these backlogs depend on something outside the team that owns them.

If the item carries an Open question labelled Blocking, do not start building
around a guess. Raise it. The sprint review with Metro is every second week and
that is the fastest route to an answer, but email between reviews works too.

Assign the issue to yourself and move the card to In progress. An item nobody has
claimed and an item three people are quietly working on look identical on a board,
and both are expensive.

## Branches

One branch per backlog item, named after it.

```
met-b-007-patrol-completion-rule
```

Lowercase, hyphens, the identifier first. Branch from `development`, never from
another feature branch, unless you genuinely mean to build on unmerged work and
have said so to the other team.

## Commits

Write commit messages for the person who runs `git log` in 2027 trying to
understand why something is the way it is. That person may be you.

```
MET-B-007 compute patrol coverage over a rolling window

The requirement says "at least once per hour". Metro confirmed on 12 September
that this is a rolling 60-minute window rather than a clock hour, which changes
the compliance figure for a night by roughly 4%. Recorded in ADR 0006.
```

The identifier, then what changed, then why if the why is not obvious. Nobody has
ever regretted a commit message that explained itself.

## Pull requests

The process is in [docs/03-pull-request-process.md](docs/03-pull-request-process.md)
and it has rules that will feel heavy in week two and obvious in week six. The two
that matter most:

Every pull request needs at least two reviewers, and at least one must be from a
different team. This is not bureaucracy. It is the mechanism by which four teams
building one product find out what the others are doing before it becomes a merge
conflict.

Every acceptance criterion on the item must be demonstrated in the pull request,
with a screenshot, a recording, or a test that a reviewer can run. "Implemented"
is not a demonstration.

## When you finish

Move the card to Done only when the pull request is merged. Close the issue from
the pull request with `Closes #12` so that the link survives.

If you discovered something while building it that the next person would want to
know, write it down. A comment on the issue is fine. An architecture decision
record is better when the thing you discovered was a choice rather than a fact.

## When you are stuck

In order: the guides in `docs/`, your own team, the other teams on your product,
your supervisor, the Product Owner, Metro.

Two hours is a reasonable amount of time to be stuck before asking. Two days is
not, and in a two-week sprint two days is a fifth of the sprint.

## What not to do

Do not commit anything Metro gave us. No spreadsheets, no station layouts, no
scenario presentations, no operational documents. The repositories are public.
[docs/10-data-handling.md](docs/10-data-handling.md) explains what to do instead,
and it is short.

Do not commit secrets. Not in code, not in a config file, not "temporarily". A
secret pushed to a public repository is compromised even if you force-push it away
sixty seconds later.

Do not change a shared interface without telling the teams that consume it. See
[docs/05-api-contracts.md](docs/05-api-contracts.md). This is the single most
common way a team ruins another team's sprint.

Do not silently fix a defect you found while doing something else. Raise it as its
own item. A pull request that does two things is twice as hard to review and four
times as hard to revert.
