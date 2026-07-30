> **DID Master (Case D)** · Epic D-EP5: Selection, confirmation and record (reconstructed, presumed D5)

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** tech · **Proposed sprint** 5

## User story

As an Operations Administrator, I want every confirmed Destination ID recorded with who chose it, when, and on what basis, so that a routing decision can be reconstructed afterwards.

## Context

Reconstructed. Case D is the only one of the four with no logging story in the delivered document, while Case A has A6.1 and Case C has C10.2. For a system influencing train routing this cannot be an omission by design.

## Acceptance criteria

- [ ] A confirmed selection records operator, Destination ID, the version of that record, the query that led to it, and the server timestamp.
- [ ] The ranked candidates the operator was shown are recorded alongside, so a poor outcome can be traced to what the system offered.
- [ ] Records are append-only, with no code path that alters one.
- [ ] Selections are queryable by date, operator and Destination ID.

## Dependencies

- Blocks D-015.

## Open questions

- **[Blocking · Metro]** How many Destination ID changes does a control room make in a typical day, and how many in a disrupted one? This determines the volume the record must sustain and whether the students should think about it at all.

## Provenance

Source: AAU-reconstructed, presumed epic D6.
