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

- **[Answered · Metro, August 2026]** Who owns scenario content, and how is it corrected or added today? **The two Operations Departments own it, one per line, and the practice differs between them.** On M1/M2 that ownership holds. On M3/M4 the control-room presentation was produced by a Control Room Supervisor and the steward training page by the Steward trainer, so one scenario exists today as two artefacts, in two tools, maintained by two people. Three things follow for the schema. Ownership is a property of the line, not of the product. The control-room view and the steward view of one scenario must be editable by different people while remaining versioned as one scenario rather than two documents. And the seed loader should ingest both current artefacts, because removing that duplication is the clearest operational gain this product can offer.

## Provenance

Source: AAU-added, implied by the absence of a dataset in the source material.
