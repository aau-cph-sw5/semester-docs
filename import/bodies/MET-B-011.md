> **Manning/patrol requirement (Case B)** · Epic B-EP4: Train manning coverage

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want to see what proportion of the running time of the trains has been manned, so that I can confirm the requirement of at least 70 percent is met.

## Context

Source story B3.1, revised by Metro Service in August 2026. The arithmetic is trivial; the definitions are not. Metro has now fixed the measure as time-weighted across the shift, which leaves the definition of a running train as the remaining judgement.

## Acceptance criteria

- [ ] The percentage is computed as manned minutes divided by minutes in service, summed across trains over the shift to date, and displayed against the target.
- [ ] An instantaneous reading is available beside the shift figure, and the two are distinguishable at a glance, since the operator needs to know both what is happening now and where the shift stands.
- [ ] The denominator definition, meaning what counts as a train in service, is documented and visible to the user on request.
- [ ] A percentage below target is distinguished from one at or above it by more than colour.
- [ ] The computation is covered by tests including the boundary case at exactly 70 percent.

## Dependencies

- Requires B-010.

## Open questions

- **[Answered · Metro, August 2026]** How is the target measured? **"The trains are manned 70 percent of the time at a night shift."** The revised story says the same in the operator's words: the proportion of the running time of the trains that has been manned. The measure is time-weighted, not instantaneous, so a gap early in the night cannot be undone late.

## Provenance

Source: B3.1
