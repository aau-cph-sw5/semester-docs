> **Emergency Scenarios (Case A)** · Epic A-EP4: Steward self-localization and status

**Size** S · **Priority** Should · **Readiness** Ready · **Track** mobile · **Type** feature · **Proposed sprint** 3

## User story

As a Steward, I want to mark a required station as covered, so that the control room can see staffing progress.

## Context

Source story A3.2.

## Acceptance criteria

- [ ] Marking a station covered changes its derived state per A-012 for all users.
- [ ] A steward can only mark a station covered if their reported position is that station, or the reason for allowing otherwise is documented.
- [ ] The action writes an event to the incident log with actor, station and timestamp.

## Dependencies

- Requires A-012 and A-013.

## Open questions

- **[Answered · Metro, August 2026]** May a steward mark a station covered while not physically at it? **No. The steward must be physically present at the station to perform the tasks.** Coverage is therefore evidence of presence rather than a statement of intent, and the interface must offer no way to mark a station from elsewhere. A steward responsible for two adjacent stations is covering one at a time, which is precisely what the en-route state in A-012 exists to show.

## Provenance

Source: A3.2
