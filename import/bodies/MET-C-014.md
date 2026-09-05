> **Operational Restrictions (Case C)** · Epic C-EP6: Cancellation

**Size** M · **Priority** Should · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 6

## User story

As an Originator, I want to cancel a restriction by signing it cancelled once its cause is resolved, and have that cancellation validated and taken out of force in sequence, so that the restriction stops applying through a controlled process.

## Context

Source stories C5.1, C5.2 and C5.3, combined into one item. They are three signatures on one linear chain with no branching between them, and splitting them across sprints produces two sprints in which cancellation exists but does not work.

## Acceptance criteria

- [ ] The originator signs to move the restriction to pending cancellation.
- [ ] The Duty Operations Manager confirms the cause is resolved and signs, moving it to control-room cancellation.
- [ ] The Control Room Supervisor signs to take it out of force.
- [ ] Each step is refused unless the previous one is complete, enforced by the state machine of C-002.
- [ ] A restriction out of force no longer appears in the register of C-016.

## Dependencies

- Requires C-002, C-003, C-009.

## Open questions

- **[Answered · I3.4456, August 2026]** Can someone other than the original originator start a cancellation, for example if that person has left or is unavailable? **Yes: if the originator cannot cancel it—end of employment, long absence or sickness—the restriction can be cancelled by the Betriebsleiter** (I3.4456, section 3.2.2).

## Provenance

Source: C5.1, C5.2, C5.3
