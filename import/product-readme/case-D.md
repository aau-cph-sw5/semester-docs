# Case D. DID Master

*DID Master*  ·  5th Semester, BSc Software Engineering, AAU Copenhagen  ·  Autumn 2026

Decision support for assigning Destination IDs. The operator describes the intended destination or service in natural language, the system retrieves candidates from the catalogue, presents readable descriptions and graphical previews, and requires explicit operator confirmation before a Destination ID is applied.

> **New here?** Read the [documentation hub](https://github.com/aau-cph-sw5/semester-docs) first,
> in particular [CONTRIBUTING](https://github.com/aau-cph-sw5/semester-docs/blob/main/CONTRIBUTING.md),
> [onboarding](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/01-onboarding.md) and
> [handling Metro material](https://github.com/aau-cph-sw5/semester-docs/blob/main/docs/10-data-handling.md).

> The source document contains 9 stories, the fewest of the four cases, and its epic numbering runs D1, D2, D3, D4, then D7. Two epics were drafted and are absent from the delivered material. Items marked as reconstructed below are AAU proposals for what those epics most probably contained, written so that Metro can confirm or correct them rather than start from nothing. The case summary states that explicit operator confirmation is required before a Destination ID is applied, yet no delivered story covers applying one.

## The work

24 backlog items across 9 epics, one GitHub issue each. [Board](https://github.com/orgs/aau-cph-sw5/projects) · [Full backlog](https://github.com/aau-cph-sw5/semester-docs/blob/main/backlog/case-d-did-master.md)

**Start with the minimum demonstrable product**, the 8 items proposed for sprints 1 to 3:

- `MET-D-001` Data quality assessment of the Destination ID catalogue
- `MET-D-002` Catalogue data model with route attributes
- `MET-D-003` Import the catalogue and image set
- `MET-D-006` Attribute filter and sort over the catalogue
- `MET-D-007` Readable route and behaviour presentation
- `MET-D-008` Query and result contract between client and ranking service
- `MET-D-009` Deterministic baseline ranker
- `MET-D-013` Graphical preview alongside the description

**11 items are blocked** on an answer from Metro Service. They are not dead: read them, and bring the question to the next sprint review. Filter the issues by `needs:metro` to see them.

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
