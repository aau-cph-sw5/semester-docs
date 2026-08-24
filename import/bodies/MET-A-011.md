> **Emergency Scenarios (Case A)** · Epic A-EP3: Shared situational overview

**Size** L · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 3

## User story

As a Control Room Operator, I want a live overview showing required staffing and current steward positions, so that I can see coverage at a glance.

## Context

Source stories A2.2 and A2.3 combined at the presentation layer. The transport that makes it live is A-004.

## Acceptance criteria

- [ ] Each steward last reported location is shown against their name, with the age of that report.
- [ ] A steward whose report is older than the staleness threshold is shown as stale rather than as present.
- [ ] The overview updates without manual refresh, verified against the timings in A-004.
- [ ] Required stations, covered stations and gaps are all visible on one screen for a full line without scrolling, at the resolution the control room uses.

## Dependencies

- Requires A-004 and A-008.

## Open questions

- **[Answered in part · Metro, August 2026]** How many stewards are on duty? **Up to 20 on a night shift.** Twenty positions against 46 stations is a scale at which every steward can be individually visible and legible at once, which rules out clustering work a display for sixty would have needed. How many stations one steward covers is still unanswered; Metro asked in return why it is relevant, and the answer worth giving is that it decides whether a steward's position is a point or a span, and therefore whether the operator reads coverage off the screen correctly.

## Provenance

Source: A2.2, A2.3
