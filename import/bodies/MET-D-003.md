> **DID Master (Case D)** · Epic D-EP1: Catalogue data model, import and maintenance

**Size** L · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 2

## User story

As an Operations Administrator, I want the existing descriptions and images imported into the system, so that operators can search and view all Destination ID information in one place.

## Context

Source story D1.1. Import is not a one-off script: the catalogue changes, so the import path is also the update path and should be built as such from the beginning.

## Acceptance criteria

- [ ] Each Destination ID record is linked to its description and its image.
- [ ] Import is repeatable and idempotent; re-running it does not duplicate records.
- [ ] A record whose image is missing imports successfully and is reported, rather than failing the run.
- [ ] Import produces a summary stating records created, updated, skipped and rejected, with reasons.
- [ ] Opening an imported Destination ID shows its description and its image together.

## Dependencies

- Requires D-002.

## Provenance

Source: D1.1
