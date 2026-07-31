> **Emergency Scenarios (Case A)** · Epic A-EP2: Scenario selection and activation

**Size** M · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 2

## User story

As a Control Room Operator, I want to select the active emergency scenario from a predefined list, so that every steward immediately sees which alternative-operation plan is in effect.

## Context

Source story A1.1, restated with testable criteria. The original criterion, that the scenario becomes active for all connected users, is an architectural requirement and has been moved to A-004.

## Acceptance criteria

- [ ] The scenario list is loaded from reference data and is searchable when it exceeds one screen.
- [ ] Selecting a scenario requires a confirmation step before it becomes active, and the confirmation names the scenario.
- [ ] Once activated, the active scenario is visible in the control-room interface at all times without navigation.
- [ ] Only one scenario per line can be active at any moment, enforced server-side and covered by a test.
- [ ] Activation writes an event to the incident log carrying the actor and the timestamp.

## Dependencies

- Requires A-002 and A-003.

## Open questions

- **[Shaping · Metro]** Can two scenarios be active at the same time on the same line, for example a primary scenario and a local one at a single station? The source stories assume one.

## Provenance

Source: A1.1
