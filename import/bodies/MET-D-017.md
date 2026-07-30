> **DID Master (Case D)** · Epic D-EP6: Audit, access and traceability (reconstructed, presumed D6)

**Size** M · **Priority** Should · **Readiness** Blocked · **Track** backend · **Type** compliance · **Proposed sprint** 4

## User story

As an administrator, I want catalogue maintenance separated from operational use, so that an operator cannot alter the reference data they depend on.

## Context

Reconstructed. Case D is the only case with no access-control story in the delivered document. The separation that matters here is between using the catalogue and changing it, since D-004 permits correction of records that influence routing.

## Acceptance criteria

- [ ] Roles distinguish operational use from catalogue maintenance, and the matrix is documented as data.
- [ ] An operator cannot reach any catalogue-editing path, verified by a test.
- [ ] Every access to a maintenance function is recorded to the audit trail of D-020.
- [ ] Every entry in the matrix is covered by a test asserting both permission and refusal.

## Dependencies

- Blocked on the real role definitions from Metro.

## Open questions

- **[Blocking · Metro]** Who maintains the Destination ID catalogue today, and is that the same group as the control-room operators who use it?

## Provenance

Source: AAU-reconstructed, presumed epic D6.
