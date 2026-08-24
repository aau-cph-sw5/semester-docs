> **Manning/patrol requirement (Case B)** · Epic B-EP6: Coverage analytics and forecasting

**Size** M · **Priority** Could · **Readiness** Needs refinement · **Track** backend · **Type** evaluation · **Proposed sprint** unscheduled

## User story

As a supervisor, I want the forecast measured against shifts it has not seen, so that its accuracy is evidenced rather than claimed.

## Context

The source document asks for a forecast with reasoning, which any generated text satisfies. This item is what makes the forecast assessable.

## Acceptance criteria

- [ ] A set of shifts is held out and never used to develop the method.
- [ ] Forecast accuracy is reported at defined points through the shift, for example at a third and at two thirds elapsed.
- [ ] A trivial baseline, for example extrapolating the current rate linearly, is reported alongside.
- [ ] The evaluation runs from a single command and the result is reported honestly, including when the baseline wins.

## Dependencies

- Requires B-015.

## Provenance

Source: AAU-added.
