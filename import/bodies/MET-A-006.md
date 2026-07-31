> **Emergency Scenarios (Case A)** · Epic A-EP9: Offline and degraded operation

**Size** L · **Priority** Should · **Readiness** Ready · **Track** mobile · **Type** feature · **Proposed sprint** 4

## User story

As a Steward, I want the reports I made while offline to reach the control room once and only once when I regain signal, so that my position is correct and the control room does not see duplicates.

## Context

The consequence of A-005. Once the client can act offline, it accumulates state that must be reconciled. Getting this wrong produces duplicate patrol and position records, which is worse than losing them because it corrupts the picture the control room trusts.

## Acceptance criteria

- [ ] Position and status reports made with no connection are queued locally and survive an application restart.
- [ ] On reconnection the client reconciles to the current server scenario within 5 seconds without user action.
- [ ] Each queued report is applied server-side exactly once, verified by a test that replays the same queue twice.
- [ ] If the scenario changed while the client was offline, queued reports against the superseded scenario are rejected and the steward is told why.
- [ ] Conflict resolution rules are recorded in an architecture decision record.

## Dependencies

- Requires A-004 and A-005.

## Open questions

- **[Detail · either]** If a steward reports a position against a scenario that has since been stood down, should that report be discarded, or retained for the incident log?

## Provenance

Source: AAU-added.
