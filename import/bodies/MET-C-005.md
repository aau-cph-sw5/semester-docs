> **Operational Restrictions (Case C)** · Epic C-EP2: Authoring

**Size** S · **Priority** Should · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 3

## User story

As an Originator, I want to be prevented from submitting an incomplete restriction, so that nothing enters approval that the approver cannot act on.

## Context

Source story C1.1, second criterion.

## Acceptance criteria

- [ ] Submission is refused while any required field is empty, and the refusal names every missing field at once rather than one at a time.
- [ ] Validation is enforced server-side as well as in the client.
- [ ] A draft can be saved incomplete and returned to later.

## Dependencies

- Requires C-004.

## Provenance

Source: C1.1
