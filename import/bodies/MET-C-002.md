> **Operational Restrictions (Case C)** · Epic C-EP1: Foundation: lifecycle model and signature primitive

**Size** XL · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As a developer on this product, I want the lifecycle enforced in one place, so that no feature can move a restriction into a state the procedure does not allow.

## Context

Follows C-001. Scattering the rules across the features that trigger them is the failure mode that makes safety workflows unauditable, and it is the one a first implementation reaches for.

## Acceptance criteria

- [ ] Transitions are declared as data derived from the model of C-001, not as conditionals distributed through the features.
- [ ] An attempted transition that violates a guard is refused, and the refusal names the guard.
- [ ] Every transition emits an event to the audit record of C-021.
- [ ] The full lifecycle including cancellation is covered by tests that drive a restriction from draft to archive.
- [ ] Adding a state requires a change to the declaration and its tests, not to the features.

## Dependencies

- Requires C-001, which the arrival of the written procedure released.
- Blocks C-004 through C-018.

## Provenance

Source: AAU-added, derived from C1 through C8.
