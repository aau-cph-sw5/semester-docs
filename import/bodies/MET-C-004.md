> **Operational Restrictions (Case C)** · Epic C-EP2: Authoring

**Size** M · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 3

## User story

As an Originator, I want to create a new Operational Restriction with the required fields, so that it can enter the approval workflow in a structured form.

## Context

Source story C1.1. The fields themselves are the unknown, and they come from the existing paper form rather than from design.

## Acceptance criteria

- [ ] A restriction is created in a draft state carrying all fields the procedure requires.
- [ ] The field set is derived from the existing paper form and traced to it.
- [ ] A draft is private to its originator until submitted.
- [ ] Creation is recorded to the audit record of C-021.

## Dependencies

- Requires C-002.

## Open questions

- **[Answered · Metro, August 2026]** A copy of the existing form, to define the field set exactly. **Received in substance**: the August material includes the restriction register for each line and one worked restriction per line, which between them fix the fields: a restriction number, the restriction text, the initials of the originator, a date of implementation and a date of cancellation. One decision to take rather than assume: M1/M2 numbers restrictions as `YYMMDD-NNNN` and M3/M4 as `DD-MM-YYYY-NNNN`, and the product must either impose one scheme or carry both. Anything the team adds beyond the paper fields should be recorded as a deliberate addition.

## Provenance

Source: C1.1
