> **DID Master (Case D)** · Epic D-EP1: Catalogue data model, import and maintenance

**Size** L · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As an Operations Administrator, I want to correct a Destination ID when an error is found, with the change recorded, so that the catalogue stays accurate and the correction is traceable.

## Context

Source story D1.2, whose two criteria are dash-prefixed notes rather than testable conditions. The requirement underneath them is reference-data versioning: a Destination ID that is corrected has been used before the correction, so the record of what an operator saw at the time must survive.

## Acceptance criteria

- [ ] A correction preserves the previous version and records actor, time and reason.
- [ ] A past selection made under a previous version resolves to the version in force at the time, not the current one.
- [ ] The history of a Destination ID is viewable.
- [ ] A correction is reflected in search and ranking without a restart.

## Dependencies

- Requires D-003 and D-020.

## Open questions

- **[Blocking · Metro]** Who is entitled to correct a Destination ID description, and does a correction require approval? For a record influencing routing, uncontrolled editing seems unlikely to be acceptable.

## Provenance

Source: D1.2
