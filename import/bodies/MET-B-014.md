> **Manning/patrol requirement (Case B)** · Epic B-EP6: Coverage analytics and forecasting

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 5

## User story

As a Control Room Operator, I want emerging coverage gaps surfaced as they form, so that I can redeploy stewards in time.

## Context

Source story B5.1, restated. The original assigned this to an assistant; with no external model supplied, it is a rule over live coverage state, which is both simpler and more reliable than the original framing implied.

## Acceptance criteria

- [ ] A gap that has formed or is imminent is surfaced with the affected stations named.
- [ ] The rule that defines imminent is documented and configurable.
- [ ] A gap that has been addressed disappears from the list without operator action.
- [ ] The number of alerts produced over a simulated shift is measured, so that the design can be judged against alert fatigue rather than assumed to be helpful.

## Dependencies

- Requires B-007 and B-008.

## Provenance

Source: B5.1
