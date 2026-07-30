# Metro Service product backlogs

5th Semester, BSc Software Engineering, Aalborg University Copenhagen. Autumn 2026.

Four product backlogs derived from Metro Service's user story draft of July 2026, refined to the acceptance-criteria standard in [CONVENTIONS.md](CONVENTIONS.md). **103 items**, of which 35 are blocked on input from Metro Service. The three products that run are chosen at the August backlog session; the fourth backlog is kept for the following cohort.

## Backlogs

| Case | Product | Items | Blocked | File |
|---|---|---|---|---|
| A | Emergency Scenarios | 28 | 5 | [`backlog/case-a-emergency-scenarios.md`](backlog/case-a-emergency-scenarios.md) |
| B | Steward Localization | 24 | 8 | [`backlog/case-b-steward-localization.md`](backlog/case-b-steward-localization.md) |
| C | Operational Restrictions | 27 | 11 | [`backlog/case-c-operational-restrictions.md`](backlog/case-c-operational-restrictions.md) |
| D | DID Master | 24 | 11 | [`backlog/case-d-did-master.md`](backlog/case-d-did-master.md) |

[CLARIFICATIONS.md](CLARIFICATIONS.md) lists every open question, ranked by whether it blocks an item.

## The GitHub environment

Everything lives in the [`aau-cph-sw5`](https://github.com/aau-cph-sw5) organisation. One repository per product, shared by the three or four teams working on it, plus this one for backlogs, conventions and cross-team contracts.

| Case | Product repository | Items |
|---|---|---|
| A | [`aau-cph-sw5/case-a-emergency-scenarios`](https://github.com/aau-cph-sw5/case-a-emergency-scenarios) | 28 |
| B | [`aau-cph-sw5/case-b-steward-localization`](https://github.com/aau-cph-sw5/case-b-steward-localization) | 24 |
| C | [`aau-cph-sw5/case-c-operational-restrictions`](https://github.com/aau-cph-sw5/case-c-operational-restrictions) | 27 |
| D | [`aau-cph-sw5/case-d-did-master`](https://github.com/aau-cph-sw5/case-d-did-master) | 24 |

## Building it

Authenticate once, then run one script. The token stays on your machine.

```bash
gh auth login
gh auth refresh -s project -s read:project   # Projects need their own scope
./import/push-docs.sh                        # push this repository to semester-docs
./import/setup.sh                            # labels, milestones, issues, then the four Project boards
```

`setup.sh` runs four steps in order: labels, Sprint 1 to 7 milestones, 103 issues into the four product repositories, and then one GitHub Project per case populated from those issues. Allow fifteen to twenty minutes; almost all of it is API round trips. Each step is idempotent and safe to re-run.

| Step | What it does |
|---|---|
| `bootstrap-labels.sh` | ~45 labels in each product repository: case, epic, track, type, size, priority, status, provenance |
| `create-milestones.sh` | Sprint 1 to 7 |
| `create-issues.sh` | One issue per item, routed to its case repository by `repos.tsv` |
| `create-projects.sh` | One Project per case, with Status, Size, Priority, Track, Readiness and Sprint fields, every item placed and every field set |

To work one product at a time: `CASE=D ./import/create-issues.sh && CASE=D ./import/create-projects.sh`.

### The one manual step

GitHub has no API for creating Project views, so each board needs its view added by hand. In each project: **New view**, choose **Board**, group by **Status**. Two clicks. A second view of **Table** grouped by **Sprint** gives the planning view. Items arrive with Status set to Backlog, or to Blocked where the item cannot proceed without Metro input, so the board is meaningful from the first minute.

## Metro material and this repository

These repositories are public, which is what the MIT commitment in Section 7 of the collaboration framework implies and what gives the free plan its full feature set. Metro Service data does not go into git. Spreadsheets, station layouts, scenario presentations and any operational document stay outside the repository and are referenced, never committed. The backlog items name the artefacts they depend on; they do not contain them.

## Priority and the minimum demonstrable product

The source document marked 38 of its 61 stories Must, which conveys no ordering. This repository marks 53 of 103 Must, which is better and still not an ordering. The instrument that actually orders the work is the **minimum demonstrable product**: the 36 Must items proposed for sprints 1 to 3, listed at the head of each backlog. Those are what a team can plausibly show Metro at the fourth sprint review, which is the last review at which feedback can still change direction. The August session should argue about that set rather than about the MoSCoW labels.

## What is AAU's and what is Metro's

Every item carries its provenance. Of the 103 items, 24 are AAU additions covering concerns the source document does not address, 4 are reconstructions of the two Case D epics missing from the delivered material, and the remaining 75 derive from a Metro story cited by its identifier. All 61 source stories are accounted for; none was dropped. This distinction should stay visible at the August session, because Metro should be able to see at a glance what came from them and what did not.

## Known departures from the source document

- **Offline and degraded behaviour.** The words offline, connectivity, degraded, unavailable, timeout and latency do not appear anywhere in the source document. Items covering them have been added to every product.
- **Measured evaluation.** No source story asks for a measured result. Evaluation items have been added wherever a ranking, classification or forecast is expected, together with a deterministic baseline to measure against.
- **No external model.** The Mistral integration named in the source document is not used. Where a source story assigned work to an assistant, the item has been restated as something the students implement and measure.
- **Cross-team contracts.** No source story names a dependency or a shared contract. Contract items have been added where two teams must agree an interface before either can build.
- **Priority changes.** Two items have had their priority raised, `MET-A-023` from Should to Must and `MET-B-010` from Won't to Should, each with the reason recorded on the item. Both should be confirmed with Metro.
- **Synthetic identities.** Case B runs on synthetic steward identities for the whole semester. No personal data is transferred, so no Data Processing Agreement is on the critical path.
