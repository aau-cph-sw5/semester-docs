> **Manning/patrol requirement (Case B)** · Epic B-EP9: Access, roles and identity

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 3

## User story

As an administrator, I want access to presence data limited by role, so that a record of a person is seen only by those with a reason to see it.

## Context

The access half of source story B6.2, combined with the identity fixtures the synthetic-data decision requires. Access control on this product is not a generic concern: who may see an individual steward record, as opposed to an aggregate, is the operative question in the ethical framing.

## Acceptance criteria

- [ ] The permission matrix distinguishes access to individual records from access to aggregates, and is documented as data.
- [ ] A role permitted to see aggregates cannot reach an individual record by any route, verified by a test.
- [ ] Every access to an individual record is written to the audit record of B-020.
- [ ] A synthetic steward population is seeded from a fixture, with names that could not be mistaken for real staff.

## Dependencies

- Requires B-020.
- Blocked on the role definitions from Metro.

## Open questions

- **[Blocking · Metro]** Who is entitled to see an individual steward record as opposed to aggregate coverage? This is the question the ethical framing turns on, and the source stories name Steward, Control Room Operator and Operations Administrator without defining their access.

## Provenance

Source: B6.2
