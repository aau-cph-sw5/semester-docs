> **DID Master (Case D)** · Epic D-EP6: Audit, access and traceability (reconstructed, presumed D6)

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 3

## User story

As an Operations Administrator, I want every change to the catalogue recorded, so that an incorrect record can be traced to who changed it and when.

## Context

Reconstructed, and the counterpart to D-016. D-004 permits correction of records that influence routing, which makes an audit trail a precondition of that item rather than a companion to it.

## Acceptance criteria

- [ ] Every create, correct and add operation records actor, time, prior version and reason.
- [ ] The trail is append-only, with no code path that alters an entry.
- [ ] The state of the catalogue at any past moment can be reconstructed.
- [ ] Import runs are recorded as single auditable events with their summary from D-003.

## Dependencies

- Blocks D-004.

## Provenance

Source: AAU-reconstructed, presumed epic D6.
