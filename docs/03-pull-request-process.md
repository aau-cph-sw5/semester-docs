# Pull request process

Adapted from the process the 2024 Educado cohort arrived at after a semester of
finding out what happens without one. Their version is the most valuable thing in
the material we inherited, and most of it is unchanged here.

---

## Before you open one

**Review your own code first.** Read the diff, all of it, as though someone else
wrote it. Roughly half of what a reviewer would tell you is visible to you if you
look. Ask yourself whether you would be comfortable working in this file next
month.

**Merge `development` into your branch.** Every time, immediately before opening
the pull request. Conflicts are cheapest when they are small.

**Check the acceptance criteria.** Every one, on the item. If one is not met, say
so in the description rather than hoping nobody checks. A pull request that
honestly says "criterion 4 is not met, here is why" is a useful pull request. One
that quietly omits it is not.

**Get Product Owner acceptance for the item** before opening a pull request to
`development`. This confirms the work is what was wanted before reviewers spend
time on whether it is well built.

## Reviewers

**At least two reviewers, and at least one from a different team.**

This is the rule that does the most work on this semester, and it is the one most
likely to feel like an obstacle in week two. It exists because three or four teams
are building one product, and the only reliable way for teams to know what the
others are doing is to read each other's code. Reviewers from outside the team
catch the things insiders have stopped seeing.

**Rotate the pairing weekly.** Team 1 reviews for team 2 this week, for team 3 the
next. Fixed pairs develop fixed blind spots.

**Review deadlines.** Every pull request gets a deadline agreed when it is opened.
An unreviewed pull request blocks its author and ages badly. If you are asked to
review and cannot within the deadline, say so immediately rather than silently.

## Reviewing well

Be critical of the code and generous to the person. The question is never whether
the author is good, it is whether the code will be workable in two months by
somebody who has never met them.

Things worth a comment: a name that will mislead, a decision that needs recording,
duplicated logic that already exists elsewhere in the product, an interface change
that has not been announced, a test that cannot fail, an acceptance criterion that
is claimed but not demonstrated.

Things not worth a comment: formatting a linter could catch, and personal
preference dressed as principle.

If you approve, you are saying you would be comfortable maintaining this. If you
would not be, do not approve it.

## Merging

**The last reviewer to approve merges it.** This avoids the state where a pull
request is approved and then sits for three days because everyone assumes someone
else will merge.

**Immediately after merging into `development`, check the feature works there.**
Not on your branch. On the shared branch, with everyone else's work alongside it.

**Then open the pull request to `staging` straight away**, one item at a time.
Batching items into staging is how you end up with an integration failure you
cannot attribute to anything.

If a **staging deployment fails, fixing it is the highest priority on the product**
for whoever broke it. Everything else waits. A broken staging branch blocks three
or four teams simultaneously.

## Demonstrating the criteria

Every pull request shows that the acceptance criteria are met, not that they are
believed to be met.

For a user-facing change, screenshots or a short recording. For a back-end change,
the test that proves it, or the command a reviewer can run. For a performance
criterion, the measurement with its sample size and the environment it was taken
in.

This is not ceremony. At the oral examination you will be asked how you know
something works, and "we tested it" is a weaker answer than a pull request with
the evidence attached.

## Hotfixes

If something is broken in `staging` and the fix is small, push the fix to
`staging` directly, then **immediately** make sure `development` has it too.
Divergence between the two is a source of confusing failures for everyone.

Record the hotfix as an issue afterwards so that the history is not silent about
it.

## What we changed from the Educado version

Educado required every branch to pass CodeScene before review. We have not adopted
a specific static analysis tool because the stacks are chosen per product; agree
one per product in sprint 1 and record it in an architecture decision record. The
principle stands: run something automated over the branch before you ask a human
to read it.

Educado's process referenced Play Store releases and a backend commit identifier
in every mobile pull request, because they shipped to a real app store. These
products are prototypes and do not ship, so that requirement is gone. What
replaced it is the sprint review, which is where work is shown to the partner.
