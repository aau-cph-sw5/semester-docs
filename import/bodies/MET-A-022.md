> **Emergency Scenarios (Case A)** · Epic A-EP6: Decision support: classification and checklists

**Size** S · **Priority** Could · **Readiness** Needs refinement · **Track** frontend · **Type** feature · **Proposed sprint** unscheduled

## User story

As a Control Room Operator, I want a draft dispatch message prepared from the active scenario that I can edit, so that I save time while remaining the author.

## Context

Source story A5.3, restated as template composition rather than generation, since no model is supplied. The human-in-the-loop property of the original is preserved and strengthened: nothing is sent without explicit confirmation.

## Acceptance criteria

- [ ] A draft is composed from the scenario and the selected recipients and is fully editable before sending.
- [ ] Nothing is sent without an explicit confirmation action distinct from requesting the draft.
- [ ] The sent text is stored as sent, not as the template, so the log reflects what stewards actually received.

## Dependencies

- Requires A-016.

## Provenance

Source: A5.3
