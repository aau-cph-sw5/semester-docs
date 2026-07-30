> **DID Master (Case D)** · Epic D-EP5: Selection, confirmation and record (reconstructed, presumed D5)

**Size** L · **Priority** Must · **Readiness** Blocked · **Track** frontend · **Type** feature · **Proposed sprint** 5

## User story

As a Control Room Operator, I want to confirm my choice of Destination ID explicitly, so that no assignment happens without a deliberate act by me.

## Context

Reconstructed. The case summary states that the system requires explicit operator confirmation before a Destination ID is applied, and no delivered story covers this. The delivered epic numbering skips D5 and D6, so this is our proposal for what the first of them contained. It is the central interaction of the product and the point at which its safety properties are decided, so it should not be inferred by a student team.

## Acceptance criteria

- [ ] Confirming a Destination ID requires an explicit action distinct from selecting or previewing it.
- [ ] The confirmation screen restates the route and behaviour in the presentation of D-007, so the operator confirms meaning rather than a code.
- [ ] Confirmation is refused if the record changed since the operator opened it, and the operator is shown what changed.
- [ ] The confirmed choice is recorded per D-016 before any downstream effect occurs.
- [ ] A confirmation can be abandoned at any point with no record of a choice having been made.

## Dependencies

- Requires D-007, D-013, D-016.
- Blocked on confirmation of the reconstruction and on the answer to whether the system applies or only recommends.

## Open questions

- **[Blocking · Metro]** Does the system apply a Destination ID to a train, or does it recommend one that the operator then applies in the existing control system? If it applies, we are discussing an interface to train control, which is beyond what a student project should attempt. We have assumed recommendation only.
- **[Blocking · Metro]** What did the two missing epics, D5 and D6, contain? Our reconstruction covers selection and confirmation, the record of a selection, access control and audit.

## Provenance

Source: AAU-reconstructed, presumed epic D5. Evidenced by the case summary.
