> **Emergency Scenarios (Case A)** · Epic A-EP2: Scenario selection and activation

**Size** S · **Priority** Should · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 3

## User story

As a Control Room Operator, I want to change or stand down the current scenario, so that the field picture always reflects the current operational reality.

## Context

Source story A1.3. Standing down is the state transition most likely to be left until last and it is the one that returns stewards to normal working.

## Acceptance criteria

- [ ] Switching to a different scenario requires confirmation and names both the outgoing and the incoming scenario.
- [ ] Standing down returns all clients to a normal state in which no scenario is active.
- [ ] Both transitions write an event to the incident log with actor and timestamp.
- [ ] Stewards receive a visible change of state rather than having to notice that the content differs.

## Dependencies

- Requires A-007.

## Provenance

Source: A1.3
