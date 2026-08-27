> **Manning/patrol requirement (Case B)** · Epic B-EP3: Station patrol coverage

**Size** M · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 3

## User story

As a Control Room Operator, I want stations approaching or past their patrol deadline distinguished from those that are compliant, so that I can act before a target is missed rather than after.

## Context

Source stories B2.1 and B4.1 both ask for a flag without saying what triggers it. Acting before a miss requires a warning threshold, which the source document does not define.

## Acceptance criteria

- [ ] Three states are computed and displayed: compliant, at risk, and overdue.
- [ ] The at-risk threshold is configurable and its default is documented with the reason for the default.
- [ ] State is conveyed by at least two channels, one of which is not colour.
- [ ] The count of overdue stations is visible without interaction.

## Dependencies

- Requires B-007.

## Open questions

- **[Answered · Metro, August 2026]** How long before a station falls out of compliance should it be flagged as at risk? **Ten minutes, because Metro can get a steward to the location within that time.** The threshold is an operational response time rather than a display preference, which is what makes the indicator worth acting on. It is also one train interval, so the flag appears at the last point where a steward can still reach the station on the next train.

## Provenance

Source: B2.1, B4.1
