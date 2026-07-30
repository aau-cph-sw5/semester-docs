> **Emergency Scenarios (Case A)** · Epic A-EP1: Foundation and scenario domain model

**Size** M · **Priority** Must · **Readiness** Ready · **Track** cross-team · **Type** contract · **Proposed sprint** 1

## User story

As a developer on either surface, I want a published and versioned contract for scenario state, so that the mobile and web clients can be built in parallel without integrating on guesswork.

## Context

The steward client and the control-room client share one notion of what the active scenario is. This is the interface between a front-end team and a back-end team and is the highest-value coordination artefact in the product. It is scheduled in the first sprint deliberately, before either team builds against it.

## Acceptance criteria

- [ ] The contract covers scenario identity, version, activation state, required stations, per-steward assignment, and the shape of a position report.
- [ ] The contract is committed to a shared repository path and reviewed by both teams at the first integration meeting.
- [ ] A machine-readable schema is published alongside the prose, and both clients validate against it in their test suites.
- [ ] The contract carries a version number. A breaking change requires a new version and a changelog entry, and both teams adopt it within the same sprint.
- [ ] A stub server serving the contract is available to the client team before the real implementation exists.

## Dependencies

- Blocks A-004, A-005, A-007 through A-014.
- Informed by A-001 but must not wait for it; the first version may carry placeholders marked as such.

## Provenance

Source: AAU-added. No source story names a contract or a dependency.
