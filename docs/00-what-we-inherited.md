# What we inherited, and what we did with it

The 2024 and 2025 Educado cohorts maintained a central resource repository. It was
handed to this semester as a starting point. This records what carried over, what
was replaced, and what was retired, so that the decisions are auditable and so
that the 2027 cohort can see the same reasoning applied to our material.

---

## Carried over, adapted

| Educado file | Became | What changed |
|---|---|---|
| `PULL_REQUEST_PROCESS.md` | [03-pull-request-process.md](03-pull-request-process.md) | The best document in the set and largely unchanged. The cross-team review rule, the rotation, and the last-reviewer-merges convention are theirs. Removed: the CodeScene requirement, which presumed one stack, and the Play Store release fields. |
| `PULL_REQUEST_TEMPLATE.md` | `.github/PULL_REQUEST_TEMPLATE.md` | Trimmed from a fifteen-item checklist to the ones that can actually fail. Added the interface-contract question, which matters more here than it did there. |
| `ERRORS.md` | [06-error-codes.md](06-error-codes.md) | The `E{category}{code}` scheme is theirs and is a genuinely good cross-team artefact. The catalogue is new, since theirs described courses and lectures. |
| `MODELS.md` | [07-data-models.md](07-data-models.md) | Same purpose, same format, including the change-history block that kept theirs usable across two cohorts. |
| `TESTING_GUIDELINES.md` | [04-testing.md](04-testing.md) | The discipline kept, the Jest and Cypress specifics generalised, since each product picks its own stack. Added a section on evaluation, which their project had no equivalent of. |
| `CODE_OF_CONDUCT.md` | [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) | They adopted the Contributor Covenant verbatim. Ours references it and adds the parts specific to sixty students in assigned teams reviewing each other, including the uneven-workload problem that generic codes of conduct never mention. |
| `FEATURE_PROGRESS.md` | [13-handover.md](13-handover.md) and [templates/handover-note.md](../templates/handover-note.md) | Their file existed to orient the next cohort, which is exactly right. Turned from an ad hoc document into a template with a defined structure, and made a graded deliverable. |
| `ISSUE_TEMPLATE.md` | `.github/ISSUE_TEMPLATE/bug_report.yml` | Converted from a markdown file nobody is prompted with into a GitHub issue form that appears when someone opens an issue. |
| `COMPONENTS.md` | Product repositories | A register of shared UI components is useful and belongs next to the components, not in a hub shared by four unrelated products. |

## Replaced

**`DEVOPS.md`** was a definition of DevOps quoted from Microsoft followed by three
empty headings. [09-environments-and-ci.md](09-environments-and-ci.md) replaces it
with the branch model, what the pipeline must do, what the environments are, and
how secrets are handled.

**`API_GUIDELINES.md`** was a 93,000-character copy of Microsoft's REST API
guidelines. Their own README described it as somewhere to look "if you are unsure
if your routes follow the guidelines", which is what happens to a document that
long. [05-api-contracts.md](05-api-contracts.md) replaces it with the subset that
applies here, and puts the emphasis where this semester needs it: on versioned
contracts between teams, which their document did not cover at all.

**`TEST_DOCUMENTATION`** was a separate record of what the tests covered. It went
stale inside one semester, and their README says so: it covered only the back end
and was not up to date. We do not keep one. The tests are the documentation, and
what belongs in prose is only what tests cannot say.

## Retired

**`FEATURES.md`** described the planned feature themes. Superseded by four product
backlogs with 103 items, acceptance criteria and provenance.

**`RELEASE_NOTE` and `RELEASE_TEMPLATE.md`** existed because Educado shipped to the
Play Store. These four products are prototypes and do not ship; Section 11 of the
collaboration framework is explicit that they are not warranted for production
use. The equivalent artefact here is the sprint review, so
[templates/sprint-review.md](../templates/sprint-review.md) took its place.

## Added, because their set had no equivalent

| New | Why |
|---|---|
| [CONTRIBUTING.md](../CONTRIBUTING.md) | They had no single entry point. A student's first hour was spent working out where to start. |
| [01-onboarding.md](01-onboarding.md) | Same reason, with a checklist that can be finished. |
| [02-ways-of-working.md](02-ways-of-working.md) | The sprint rhythm and the integration meeting were tacit. Tacit process is process that only the second-year students know. |
| [08-architecture-decisions.md](08-architecture-decisions.md) | The clearest gap in the inherited material. Their handover file describes what was built and rarely why, which is the part a successor needs and the part an examiner asks about. |
| [10-data-handling.md](10-data-handling.md) | Educado had no industry partner supplying operational material. This semester does, and the repositories are public. |
| [11-ai-use.md](11-ai-use.md) | Not a question their cohort faced in the same form. |
| [12-glossary.md](12-glossary.md) | Their domain was in English and familiar. This one is in Danish and is not. |

## The lesson we took from their set

The documents that survived two cohorts were the ones with a clear owner and a
rule about when to update them: the models file, the error codes, the pull request
process. The ones that decayed were the ones that described a state of the world
rather than a convention: the feature progress, the test documentation, the DevOps
stub.

So the rule in this hub is the one in the README. If you change something a
document describes, change the document in the same pull request. Anything that
depends on somebody remembering later has already started to rot.
