> **Manning/patrol requirement (Case B)** · Epic B-EP7: Data protection, transparency and steward rights

**Size** L · **Priority** Should · **Readiness** Blocked · **Track** backend · **Type** compliance · **Proposed sprint** 4

## User story

As an Operations Administrator, I want retention rules enforced automatically, so that compliance does not depend on someone remembering to delete records.

## Context

Source story B6.2 bundles a data lifecycle subsystem and an authorisation model into one item. The lifecycle half is here and the access half is B-021. Retention periods cannot be invented by the students.

## Acceptance criteria

- [ ] Each data category carries a retention period held as configuration rather than in code.
- [ ] Records past their retention period are removed or anonymised by an automatic process, verified by a test that advances the clock.
- [ ] Anonymisation is irreversible and the test demonstrates that the original identity cannot be recovered from what remains.
- [ ] Aggregate compliance figures survive anonymisation of the underlying personal records.
- [ ] Every expiry action writes an event to the audit record of B-020.

## Dependencies

- Requires B-020.
- Blocked on retention periods from Metro.

## Open questions

- **[Blocking · Metro]** What retention period applies to steward presence records? The five-year figure in Case C is for a different obligation and should not be assumed here.

## Provenance

Source: B6.2
