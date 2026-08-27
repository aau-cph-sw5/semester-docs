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

- **[Answered · Metro, August 2026]** Can two scenarios be active at once on the same line? **Not normal practice, and not excluded.** The way Metro describes it happening is the operative detail: one incident starts, a scenario is run, and a second problem arises at a different location while the first is still running. The control room then runs trains through as much of the line as the incident locations and the available Destination IDs allow. So the model must permit more than one active scenario on a line, and the second normally arrives during the first rather than with it. Two design consequences: activating a scenario must not implicitly stand down what is already active, and where two active scenarios both name a station, the steward's assignment must resolve deterministically and the rule must be visible on the screen rather than buried in the server.

## Provenance

Source: A1.1
