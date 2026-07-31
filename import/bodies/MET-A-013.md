> **Emergency Scenarios (Case A)** · Epic A-EP4: Steward self-localization and status

**Size** M · **Priority** Must · **Readiness** Ready · **Track** mobile · **Type** feature · **Proposed sprint** 3

## User story

As a Steward, I want to indicate my current location with a single tap, so that the control room knows where I am without a radio call.

## Context

Source story A3.1. The station list a steward chooses from should be scoped to the active scenario, otherwise the single tap becomes a search through the whole network.

## Acceptance criteria

- [ ] The stations offered are those relevant to the active scenario, ordered by proximity to the last reported position.
- [ ] Setting a location requires one action from the main screen, not a navigation sequence.
- [ ] The previous position is replaced rather than accumulated, and the replacement is visible to the steward.
- [ ] A report made with no connection is queued per A-006 and the steward is told it is queued rather than sent.

## Dependencies

- Requires A-003.
- Interacts with A-006.

## Provenance

Source: A3.1
