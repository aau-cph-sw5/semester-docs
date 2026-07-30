> **Operational Restrictions (Case C)** · Epic C-EP3: Approval and implementation signing

**Size** M · **Priority** Should · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Duty Operations Manager, I want to return a restriction to its originator with a requested change, so that a restriction I cannot approve is corrected rather than abandoned.

## Context

This path appears only as trailing clauses in source stories C1.2 and C2.1, both of which read as afterthoughts. It is nonetheless a full state transition with a notification, a re-signing requirement and a version consequence, and it is the path most likely to be discovered late.

## Acceptance criteria

- [ ] A refused restriction returns to a state in which the originator can edit it, carrying the reason for refusal.
- [ ] Editing a returned restriction invalidates the originator signature and requires re-signing.
- [ ] The refusal, its reason and its actor are recorded and visible in the history.
- [ ] The originator is notified per C-019.

## Dependencies

- Requires C-002, C-003, C-006.

## Open questions

- **[Blocking · Metro]** When a Duty Operations Manager cannot approve a restriction, does it return to the originator for editing, or is it rejected outright and a new one raised? The two stories that mention this path do not agree.

## Provenance

Source: C1.2, C2.1, both as trailing clauses
