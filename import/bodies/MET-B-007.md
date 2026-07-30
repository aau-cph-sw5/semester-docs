> **Steward Localization (Case B)** · Epic B-EP3: Station patrol coverage

**Size** L · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 3

## User story

As a Control Room Operator, I want to know whether each station has been patrolled within the last hour across both concourse and platform, so that I can confirm the hourly requirement is met.

## Context

Source story B2.1. The hard part is not the query but the definition: what makes a patrol complete, whether the hour is a rolling window or a clock hour, and whether concourse and platform must be covered by the same steward on the same pass.

## Acceptance criteria

- [ ] The patrol completion rule is documented before implementation, covering the window definition and the treatment of separate areas.
- [ ] A station with no qualifying patrol within the window is computed as overdue.
- [ ] Concourse and platform coverage are computed independently and both are visible.
- [ ] The computation is covered by tests over the fixture of B-002, including the deliberate gap.
- [ ] Recomputing the same period twice produces the same result, verified by a test.

## Dependencies

- Requires B-002, B-003, B-004.

## Open questions

- **[Blocking · Metro]** Is the hourly patrol requirement a rolling 60-minute window or a clock hour? The two produce different compliance figures for the same night.
- **[Blocking · Metro]** Must concourse and platform be covered on the same pass by the same steward, or does any coverage of each within the window satisfy the requirement?

## Provenance

Source: B2.1
