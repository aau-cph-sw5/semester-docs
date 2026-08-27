> **Manning/patrol requirement (Case B)** · Epic B-EP5: Compliance dashboard and reporting

**Size** L · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want a live compliance dashboard for the current shift, so that I can redeploy stewards before a target is missed.

## Context

Source story B4.1. The dashboard is the product as far as the control room is concerned, and it is the artefact Metro will judge at a sprint review.

## Acceptance criteria

- [ ] Live patrol coverage and train manning are both visible on one screen for a full line.
- [ ] The display updates without manual refresh and states the age of its data.
- [ ] At-risk and overdue metrics are surfaced without the operator having to look for them.
- [ ] The dashboard is legible at the resolution the control room actually uses.
- [ ] The dashboard remains usable when the manning source of B-010 returns nothing, degrading rather than failing.

## Dependencies

- Requires B-007, B-008, B-011.

## Open questions

- **[Shaping · Metro]** If the dashboard is opened only when needed, how should the control room learn that a station is at risk? A ten-minute warning on a closed screen is not a warning, and the alternative paths are a desktop notification, a radio call from whoever is watching, or accepting that the indicator is consulted rather than delivered.
- **[Answered · Metro, August 2026]** What screen does the control room use, and is the dashboard continuous or opened when needed? **A standard working PC, opened when needed.** The same answer as A-004, with the same consequence: no wallboard holds the picture, so the dashboard must be legible from a cold open, must show what happened while nobody was looking rather than only the present state, and cannot raise an alarm through a colour change alone. It also puts a question back to Metro, which is how the control room is meant to learn that a station is at risk while the dashboard is closed.

## Provenance

Source: B4.1
