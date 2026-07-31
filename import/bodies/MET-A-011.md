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

- **[Blocking · Metro]** How many stewards are on duty during an incident, and how many stations does one steward typically cover? A display for six stewards and a display for sixty are different designs.

## Provenance

Source: A2.2, A2.3
