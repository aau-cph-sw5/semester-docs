# 5th Semester Documentation Hub

**BSc Software Engineering, Aalborg University Copenhagen. Autumn 2026.**
**Industry partner: Metro Service A/S.**

This repository is the shared reference for everyone on the semester: four product
backlogs, the conventions every team works to, and the guides you will actually
need in week one. Product code lives in the four product repositories. Anything
that applies to more than one team lives here.

---

## Start here

If you are a student and it is the first week, read these four, in this order.
They take about fifty minutes together and they will save you a fortnight.

| | |
|---|---|
| [CONTRIBUTING.md](CONTRIBUTING.md) | What to do on day one, how work flows from backlog item to merged code |
| [docs/01-onboarding.md](docs/01-onboarding.md) | Who is who, accounts, access, environment, and the first-week checklist |
| [docs/02-ways-of-working.md](docs/02-ways-of-working.md) | The sprint rhythm, the ceremonies, and how teams that share a codebase avoid ruining each other's week |
| [docs/14-assessment.md](docs/14-assessment.md) | What the examination assesses, and how the board relates to the report |

## The backlogs

Four products. Three run this semester; the fourth is kept for the following
cohort. Which three is decided at the August backlog session.

| Case | Product | Items | Blocked | Backlog | Board |
|---|---|---|---|---|---|
| A | Emergency Scenarios | 28 | 2 | [backlog](backlog/case-a-emergency-scenarios.md) | [board](https://github.com/orgs/aau-cph-sw5/projects/3) |
| B | Manning/patrol requirement | 24 | 3 | [backlog](backlog/case-b-manning-patrol.md) | [board](https://github.com/orgs/aau-cph-sw5/projects/4) |
| C | Operational Restrictions | 27 | 7 | [backlog](backlog/case-c-operational-restrictions.md) | [board](https://github.com/orgs/aau-cph-sw5/projects/5) |
| D | DID Master | 24 | 11 | [backlog](backlog/case-d-did-master.md) | [board](https://github.com/orgs/aau-cph-sw5/projects/6) |

> **Updated 24 August 2026.** Metro Service returned answers to the questions we
> put to them in July, together with revised user stories and the operational
> material several items were waiting for. Blocked items fall from 35 to 23.
> Case B has been renamed by Metro from *Steward Localization* to *Manning/patrol
> requirement*, and its repository is now `case-b-manning-patrol`; the old URL
> redirects, but update your remote if you have already cloned it. Case D is the
> one Metro says they do not prioritise.

**Blocked** means the item cannot be finished until Metro Service answers a
question. Those questions are collected in [CLARIFICATIONS.md](CLARIFICATIONS.md)
and each one is also on the issue it belongs to, labelled `needs:metro`. A blocked
item is not a dead item: read it, understand it, and raise the question at the
next sprint review.

[CONVENTIONS.md](CONVENTIONS.md) explains how backlog items are written, what the
size scale means, and what makes an acceptance criterion acceptable.

## The guides

| Guide | Read it when |
|---|---|
| [03-pull-request-process.md](docs/03-pull-request-process.md) | Before you open your first pull request. Non-negotiable. |
| [04-testing.md](docs/04-testing.md) | Before you write your first test, and again when you are tempted not to |
| [05-api-contracts.md](docs/05-api-contracts.md) | The moment your team's work depends on another team's work |
| [06-error-codes.md](docs/06-error-codes.md) | When you invent an error, so that nobody invents it twice |
| [07-data-models.md](docs/07-data-models.md) | When you add or change a persisted entity |
| [08-architecture-decisions.md](docs/08-architecture-decisions.md) | When you make a choice a stranger would question |
| [09-environments-and-ci.md](docs/09-environments-and-ci.md) | When you need something to run somewhere other than your laptop |
| [10-data-handling.md](docs/10-data-handling.md) | Before you touch anything Metro gave us. Read this one early. |
| [11-ai-use.md](docs/11-ai-use.md) | Before you use an AI assistant on this project, which is to say now |
| [12-glossary.md](docs/12-glossary.md) | Every time a Dane says a word you do not know |
| [13-handover.md](docs/13-handover.md) | Sprint 1, so you know what you are aiming at, and sprint 7, when you write it |
| [CODE_OF_CONDUCT.md](docs/CODE_OF_CONDUCT.md) | Now, and if anything goes wrong |
| [14-assessment.md](docs/14-assessment.md) | Week one, and again when you start the report. What you are graded on. |
| [00-what-we-inherited.md](docs/00-what-we-inherited.md) | If you want to know why these guides say what they say |

## Templates

| Template | Used for |
|---|---|
| [templates/adr.md](templates/adr.md) | One architecture decision record |
| [templates/sprint-review.md](templates/sprint-review.md) | What you bring to Metro every second week |
| [templates/retrospective.md](templates/retrospective.md) | The team's own retrospective |
| [templates/handover-note.md](templates/handover-note.md) | The final deliverable to the 2027 cohort |

Issue and pull request templates are not in this repository. They live in the
`.github/` directory of each product repository, installed there by
`import/push-templates.sh`.

---

## How this semester is different

Three things about this semester are unusual, and most of the documentation here
exists because of them.

**Several teams share one codebase.** Three or four teams build each product. That
is harder than one team building one thing, deliberately so, because coordinating
across team boundaries is the thing this semester is here to teach. The parts of
these guides that feel like overhead, the contracts, the review rotation, the
decision records, are the parts that make a shared codebase survivable.

**The partner is real and the domain is unfamiliar.** Metro Service runs the
Copenhagen metro. Nobody starts this semester understanding night patrol
compliance or Destination IDs. Ask. The glossary exists because the vocabulary is
genuinely hard, and the fastest way to build the wrong thing is to guess what a
Danish operational term means.

**Someone inherits this in 2027.** The 2026 cohort builds from nothing, which
means the 2026 cohort is the only one that gets to decide whether the 2027 cohort
inherits something comprehensible. That is why the handover is a graded
deliverable rather than a favour.

## Where things live

```
semester-docs/          this repository: backlogs, conventions, guides
case-a-emergency-scenarios/    product code
case-b-manning-patrol/   product code
case-c-operational-restrictions/
case-d-did-master/
```

Product-specific documentation belongs in the product repository, next to the code
it describes. If a document would be true for more than one product, it belongs
here.

## Keeping this current

Documentation that lies is worse than documentation that is missing, because
people believe it. Two rules.

If you change something a document describes, change the document in the same pull
request. Not afterwards, not in a follow-up issue.

If you find a document that is wrong, either fix it or open an issue against this
repository. Leaving it is not neutral.

The backlogs, the conventions file and the clarifications register are generated
from a single dataset and should not be edited by hand. Everything else is
ordinary prose and is yours to improve.
