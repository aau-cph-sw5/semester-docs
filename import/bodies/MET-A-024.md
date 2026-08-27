> **Emergency Scenarios (Case A)** · Epic A-EP7: Incident log and post-incident analysis

**Size** M · **Priority** Should · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 5

## User story

As an Operations Analyst, I want to open a past incident and follow the sequence of events, so that I can reconstruct what happened and when.

## Context

The second half of source story A6.1. Reading the log is a separate deliverable from writing it, and it is the one that demonstrates the log was worth keeping.

## Acceptance criteria

- [ ] A past incident can be selected by date and line and its events displayed in order.
- [ ] The timeline shows scenario changes, staffing events and messages on one axis.
- [ ] The view is exportable in a format that survives outside the system.
- [ ] An incident with no events displays as empty rather than as an error.

## Dependencies

- Requires A-023.

## Open questions

- **[Answered · Metro, August 2026]** Who reviews incidents afterwards, and what do they need to answer? **The Operations Analyst, and the answer restores the persona.** Metro analyses any incident that was not handled in the most efficient way, and the analyst reads logs from many systems to assemble the entire picture. Two consequences. The analyst is a real read-only actor after all, so the permission matrix in A-026 gains a fourth role with read access to the log and no ability to act on a scenario; the note under A-026 saying the persona should be dropped is superseded. And this timeline is one input among several rather than the record, so it must be correlatable with systems this product does not touch: one time reference, an explicit clock source, and an export a person can align with another system's output.

## Provenance

Source: A6.1
