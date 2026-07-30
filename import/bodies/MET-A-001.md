> **Emergency Scenarios (Case A)** · Epic A-EP1: Foundation and scenario domain model

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** cross-team · **Type** spike · **Proposed sprint** 1

## User story

As a team on this product, we want a documented entity model for emergency scenarios extracted from the two Metro presentations, so that every other item on this backlog has something concrete to build against.

## Context

The source document states that no dataset exists and that the only assets are two presentations, one for M1M2 and one for M3M4. Nothing else in this backlog can be estimated honestly until the shape of a scenario is known. This is a timeboxed spike, not an implementation item, and its output is a document plus a schema proposal reviewed with the Metro domain expert.

## Acceptance criteria

- [ ] The entity model names every concept a scenario contains, at minimum scenario identity, affected line, required stations, per-station role, and the sequence of steward actions.
- [ ] Each entity is traced to the slide or passage in the Metro material that evidences it, or is marked as an assumption to be confirmed.
- [ ] Variation between the M1M2 and M3M4 material is documented explicitly rather than averaged away.
- [ ] The model is reviewed with the Metro domain expert and the review outcome is recorded in the repository.
- [ ] The spike is closed after 5 team-days regardless of completeness, with open questions carried into A-002.

## Dependencies

- Blocked until the two alternative-operation presentations are received from Metro Service.

## Open questions

- **[Blocking · Metro]** The two alternative-operation presentations, one per line, are required before this item can start. Nothing else in Case A can be refined without them.
- **[Shaping · Metro]** How many distinct scenarios exist per line, and roughly how often is a scenario activated in practice?

## Provenance

Source: AAU-added. The source backlog contains no item for this work, which is the first work any team must do.
