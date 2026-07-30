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

- **[Shaping · Metro]** May a steward mark a station covered while not physically at it, for example when covering two adjacent stations? The answer determines whether coverage is evidence or intent.

## Provenance

Source: A3.2
