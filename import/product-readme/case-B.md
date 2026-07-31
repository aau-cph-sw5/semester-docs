# Case B. Steward Localization

*STW-lokalisering*  ·  5th Semester, BSc Software Engineering, AAU Copenhagen  ·  Autumn 2026

A compliance-grade system documenting that stewards are present and active during night operation, against a contractual requirement of at least 70 percent of trains manned and every station patrolled at least once per hour, with a verifiable real-time and historical record.

> **New here?** Read the [documentation hub](https://github.com/aau-cph-sw5/semester-docs) first,
> in particular [CONTRIBUTING](https://github.com/aau-cph-sw5/semester-docs/blob/main/CONTRIBUTING.md),
> [onboarding](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/01-onboarding.md) and
> [handling Metro material](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/10-data-handling.md).

> This product runs on synthetic steward identities for the whole semester. No personal data is transferred to AAU, so no Data Processing Agreement sits on the critical path. The ethical and technical content of the case is unaffected.

## The work

24 backlog items across 10 epics, one GitHub issue each. [Board](https://github.com/orgs/aau-cph-sw5/projects) · [Full backlog](https://github.com/aau-cph-sw5/semester-docs/blob/main/backlog/case-b-steward-localization.md)

**Start with the minimum demonstrable product**, the 9 items proposed for sprints 1 to 3:

- `MET-B-001` Evidence rule decision: is presence asserted by the system or confirmed by the steward?
- `MET-B-002` Positioning interface with a simulator implementation
- `MET-B-003` Station reference dataset with concourse and platform areas
- `MET-B-004` Presence and patrol record capture
- `MET-B-007` Patrol completion rule and hourly coverage computation
- `MET-B-008` Overdue and at-risk station indication
- `MET-B-018` Steward transparency view
- `MET-B-020` Append-only event store for presence and patrol records
- `MET-B-023` Roles, access control and synthetic identity fixtures

**8 items are blocked** on an answer from Metro Service. They are not dead: read them, and bring the question to the next sprint review. Filter the issues by `needs:metro` to see them.

## Getting it running

> Replace this section in sprint 1. A new developer must be able to clone this repository
> and get the system running by following this README alone. Test that by handing it to
> somebody on another team and watching where they get stuck.

```bash
# prerequisites
# install
# run
# test
```

## Layout

```
contracts/     published interfaces other teams build against, versioned
docs/adr/      architecture decision records
fixtures/      synthetic test data. Never anything Metro supplied.
```

## Branches

`main` protected, only what has been demonstrated at a review. `staging` integration, should always run. `development` the shared working branch. One feature branch per item, named for it.

## AI assistants

> Record here which assistants this team used and for what, per [the semester policy](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/11-ai-use.md). Two lines is enough.

## Licence

MIT, per Section 7 of the AAU and Metro Service collaboration framework.
