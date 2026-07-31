# Ways of working

Seven two-week sprints, three or four teams per product, one shared codebase.
This document is how that survives contact with reality.

---

## The sprint rhythm

Seven sprints is not seven sprints of delivery, and planning as though it were is
the most common way this semester goes wrong.

| Sprint | What it is really for |
|---|---|
| 1 | Team formation, environment, domain onboarding, the interface contract, refining the backlog. Very little feature code, by design. |
| 2 to 6 | Delivery. Five sprints. |
| 7 | Integration, hardening, the report, and preparing for the oral examination. |

So there are five delivery sprints, and if the site visit or a dataset slips there
are four. Plan against that number.

## Ceremonies

**Sprint planning**, first day of the sprint, per team. Pull only items that are
Ready. Check dependencies on other teams before committing to anything that has
one. If more than a third of what you pull depends on another team delivering
first, you have not planned, you have hoped.

**Daily stand-up**, per team, fifteen minutes, standing. Three questions, and the
third one is the one that matters: what did I do, what will I do, what is in my
way. If the answer to the third is another team, take it to them the same day.

**Integration meeting**, once per sprint, all teams on the product together. This
is where interface contracts are agreed and changed, where shared modules are
discussed, and where you find out that two teams have independently built the same
thing. Thirty minutes, and it needs an agenda. See below.

**Sprint review**, every second week, with Metro Service present. This is the
partner's window into the work and it is the only regular opportunity to correct
course. Demonstrate working software, not slides. Use
[templates/sprint-review.md](../templates/sprint-review.md).

**Retrospective**, per team, immediately after the review. Use
[templates/retrospective.md](../templates/retrospective.md). One improvement, owned
by a named person, carried into the next sprint. A retrospective that produces a
list of eight things produces nothing.

## The integration meeting

Three or four teams building one product will collide unless collision is
scheduled. The agenda is always the same four questions.

What interfaces changed or will change this sprint, and who is affected. Any
change to a published contract is announced here before it is merged, not after.

What did each team merge into the shared branch, in one sentence each. This is how
teams find duplicated work while it is still cheap to delete.

What is blocked on another team, named, with a date attached.

What did we learn that the others do not know yet. A defect in a shared module, a
Metro answer received by email, a decision that will surprise someone.

Rotate who chairs it. The chair writes four lines of notes into the product
repository afterwards. Four lines, not minutes.

## Working on a shared codebase

**One branch per backlog item.** Long-lived branches are where integration pain
accumulates. If a branch has been open for more than a week, it is too big and
should have been split.

**Merge `development` into your branch before requesting review**, every time. The
conflict you resolve now is smaller than the one you resolve on Friday afternoon.

**Never change a published interface unilaterally.** See
[05-api-contracts.md](05-api-contracts.md). Versioned change, announced at the
integration meeting, adopted by consumers in the same sprint.

**Shared modules have owners.** If a module is used by more than one team, one team
owns it and changes to it are reviewed by a consumer. Unowned shared code rots
faster than anything else in a student project.

## Branches and environments

```
main          protected. Only what has been demonstrated at a review.
staging       integration. All teams' work together. Should always run.
development   the shared working branch. Feature branches merge here.
feature/*     one per backlog item.
```

If `staging` is broken, fixing it is the highest-priority work on the product for
whoever broke it. A broken integration branch blocks every team, and the cost
compounds daily.

## Definition of Ready

An item may be pulled into a sprint when it has a user story, acceptance criteria
that can each fail, a size below L or an explicit plan to split it, named
dependencies, and no unanswered Blocking question.

## Definition of Done

Merged to the shared branch. Every acceptance criterion demonstrated rather than
described. Tests passing in continuous integration. Any interface change reflected
in the contract and announced at the integration meeting. Any decision a future
reader would find surprising recorded as an architecture decision record. The
documentation that the change makes wrong, corrected in the same pull request.

## Working with Metro Service

Metro attends the sprint reviews. Between reviews, questions go through the AAU
Product Owner rather than directly, so that the domain expert receives one
coherent list rather than nine.

Ask early. A question asked in September changes what gets built; the same
question asked in November corrects something already built.

When Metro answers something that changes an assumption, record it. A comment on
the issue at minimum, an architecture decision record if it changes a design. The
answer will otherwise live in one student's memory and leave with them.

Thirty-five of the items across the four backlogs are blocked on Metro input. That
is normal at this stage. It is not normal in November.

## Estimation

Sizes are XS to XXL and they are relative, calibrated to a team of six in a
two-week sprint. The definitions are in [CONVENTIONS.md](../CONVENTIONS.md).

The estimates in the backlog are a first pass by AAU. Re-estimate at your first
refinement and use your own numbers. The value of estimating is the conversation
that exposes the disagreement, not the number that comes out of it.

An item nobody can size below L is telling you it is not understood yet. Split it,
or spend a timeboxed spike understanding it.
