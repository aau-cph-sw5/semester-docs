> **Steward Localization (Case B)** · Epic B-EP4: Train manning coverage

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want to see what proportion of running trains are currently manned, so that I can confirm the requirement of at least 70 percent is met.

## Context

Source story B3.1. The arithmetic is trivial; the definitions are not. What counts as a running train at 03:00, and over what period the percentage is taken, both change the answer.

## Acceptance criteria

- [ ] The percentage is computed over the set of running trains at the evaluated moment and displayed against the target.
- [ ] The denominator definition is documented and visible to the user on request.
- [ ] A percentage below target is distinguished from one at or above it by more than colour.
- [ ] The computation is covered by tests including the boundary case at exactly 70 percent.

## Dependencies

- Requires B-010.

## Open questions

- **[Blocking · Metro]** Is the 70 percent requirement measured at every instant, as an average across the shift, or as a proportion of time above the threshold? A shift can satisfy one reading and fail another.

## Provenance

Source: B3.1
