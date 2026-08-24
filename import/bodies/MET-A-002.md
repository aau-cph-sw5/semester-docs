> **Emergency Scenarios (Case A)** · Epic A-EP1: Foundation and scenario domain model

**Size** L · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** data · **Proposed sprint** 2

## User story

As a developer on any team, I want scenarios held as structured reference data loaded from a versioned source, so that scenario content can be corrected without a code change.

## Context

Follows A-001. The scenarios are reference data maintained by Metro operations, not application logic, and the design should reflect that from the start. Hard-coding the first scenario is the fastest way to make the second one expensive.

## Acceptance criteria

- [ ] The relational schema holds scenarios, required stations, station roles and action sequences, with referential integrity enforced.
- [ ] A seed loader populates the database from a versioned file committed to the repository.
- [ ] Re-running the loader is idempotent and does not duplicate records.
- [ ] At least three real scenarios, agreed with the Metro expert, are present in the seed data.
- [ ] A scenario can be corrected by editing the source file and re-running the loader, with no code change.

## Dependencies

- Requires A-001, which the August material released.
- Schema reviewed with the front-end team before implementation, since it constrains A-003.

## Open questions

- **[Shaping · Metro]** Who in Metro operations owns scenario content, and how are scenarios corrected or added today?

## Provenance

Source: AAU-added, implied by the absence of a dataset in the source material.
