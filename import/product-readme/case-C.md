# Case C. Operational Restrictions

*Driftsrestriktioner*  ·  5th Semester, BSc Software Engineering, AAU Copenhagen  ·  Autumn 2026

A digital replacement for the paper-based Operational Restriction workflow: authoring, multi-party approval and signing, operator read-and-sign, cancellation, a register of restrictions in force, automatic notification, and a five-year archive, usable remotely.

> **New here?** Read the [documentation hub](https://github.com/aau-cph-sw5/semester-docs) first,
> in particular [CONTRIBUTING](https://github.com/aau-cph-sw5/semester-docs/blob/main/CONTRIBUTING.md),
> [onboarding](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/01-onboarding.md) and
> [handling Metro material](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/10-data-handling.md).

> This case has the richest source material of the four, 21 stories across 10 epics, and the highest proportion of items carrying a single acceptance criterion or none. The detail sits in the workflow structure rather than in the individual stories, which is why the state machine of C-001 and C-002 is the first thing this backlog builds.

## The work

27 backlog items across 12 epics, one GitHub issue each. [Board](https://github.com/orgs/aau-cph-sw5/projects) · [Full backlog](https://github.com/aau-cph-sw5/semester-docs/blob/main/backlog/case-c-operational-restrictions.md)

**Start with the minimum demonstrable product**, the 7 items proposed for sprints 1 to 3:

- `MET-C-001` Document the Operational Restriction lifecycle as an explicit state model
- `MET-C-002` State machine implementation with guarded transitions
- `MET-C-003` Signature primitive: identity, role, timestamp, immutability
- `MET-C-004` Create a restriction with the required fields
- `MET-C-006` Originator signs the restriction
- `MET-C-021` Versioned audit trail of every restriction and signature
- `MET-C-022` Role-based access control across the workflow

**9 items are blocked** on an answer from Metro Service, down from eleven before Metro's August answers. They are not dead: read them, and bring the question to the next sprint review. Filter the issues by `needs:metro` to see them.

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
