> **Operational Restrictions (Case C)** · Epic C-EP11: Access control, audit and versioning

**Size** L · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As a Safety Officer, I want a complete versioned audit trail of every restriction and signature, so that we have full traceability.

## Context

Source story C10.2, which is the best-formed requirement in the source document and is brought forward to the second sprint because every other item writes to it.

## Acceptance criteria

- [ ] Any change to a restriction preserves the prior version and records the actor.
- [ ] The history of a restriction shows every signature and state change with timestamps.
- [ ] The trail is append-only, with no code path that alters an entry.
- [ ] A restriction can be rendered as it stood at any past moment.
- [ ] Every signature references the exact version it was applied to, per C-003.

## Dependencies

- Blocks C-002, C-004, C-019.

## Provenance

Source: C10.2
