> **Emergency Scenarios (Case A)** · Epic A-EP10: Inheritance and handover

**Size** L · **Priority** Must · **Readiness** Ready · **Track** cross-team · **Type** tech · **Proposed sprint** 7

## User story

As a member of the 2027 cohort, I want the system I inherit to be comprehensible without its authors, so that I can extend it rather than rewrite it.

## Context

The semester is designed around inherited code and the 2026 cohort has none, so the compensating objective is that they produce something that can be inherited. This item makes that a graded deliverable rather than a hope, and it is defended at the oral examination.

## Acceptance criteria

- [ ] Architecture decision records exist for every choice that would puzzle a newcomer, at minimum transport, offline strategy, and scenario data modelling.
- [ ] The scenario state contract is committed with its version history intact.
- [ ] Characterisation tests cover the behaviour of any module the team judges non-obvious, including the coverage derivation of A-012.
- [ ] A handover note states what works, what does not, what was cut and why, and the three things the next team should do first.
- [ ] A new developer can bring the system up from the repository following the README alone, verified by someone outside the team.

## Dependencies

- Depends on the product being at a stable point; scheduled in the final sprint.

## Provenance

Source: AAU-added.
