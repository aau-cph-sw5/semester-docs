> **Emergency Scenarios (Case A)** · Epic A-EP3: Shared situational overview

**Size** L · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 2

## User story

As a Control Room Operator, I want the overview to update as stewards report position without my having to refresh it, so that I always work from a current picture.

## Context

Source stories A1.1 and A2.3 state this requirement in one clause each. Behind it sit decisions about transport, connection lifecycle, reconnection and message ordering, shared by both surfaces. It is an architectural item and is sized accordingly.

## Acceptance criteria

- [ ] A scenario activated by an operator is reflected on a connected steward client within 3 seconds at the 95th percentile, measured on staging with 25 simulated clients connected.
- [ ] A steward position report is reflected on the control-room overview within 3 seconds at the 95th percentile under the same conditions.
- [ ] The measurement harness is committed and reproducible from a single command, and the reported figure states the sample size.
- [ ] Messages for a single steward are applied in the order they were generated, verified by a test that delivers them out of order.
- [ ] A client that loses its connection is detected within 30 seconds and shown as stale on the control-room overview rather than silently retaining its last state.
- [ ] Transport choice and its alternatives are recorded in an architecture decision record.

## Dependencies

- Requires A-003.
- Blocks A-011 and A-013.

## Open questions

- **[Shaping · Metro]** How many concurrent users would the control-room side have, and is the control room using a desktop or a wall display? A wall display and a desktop are different products.

## Provenance

Source: A1.1, A2.3
