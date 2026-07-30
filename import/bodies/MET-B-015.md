> **Steward Localization (Case B)** · Epic B-EP6: Coverage analytics and forecasting

**Size** L · **Priority** Could · **Readiness** Needs refinement · **Track** backend · **Type** feature · **Proposed sprint** unscheduled

## User story

As a Control Room Operator, I want an estimate of the risk of missing each target by the end of the shift, so that I can intervene rather than react.

## Context

Source story B5.2, restated. This is the strongest Machine Intelligence content in the case: predicting a shift outcome from a partial trajectory is a modelling problem the students build and measure, not an interface they call. It is a Could because the product is complete without it and it needs historical or simulated data to be worth anything.

## Acceptance criteria

- [ ] A forecast of the risk of missing each target by shift end is produced from the shift so far.
- [ ] The forecast states the basis of its estimate, not only the number.
- [ ] The method and its assumptions are documented, including what it cannot account for.
- [ ] The forecast is measured by B-016 rather than asserted.

## Dependencies

- Requires B-007 and B-011.
- Measured by B-016.

## Open questions

- **[Shaping · Metro]** Does any historical record of night-shift coverage exist in any form, even informal? Without it the forecast can only be trained and tested on simulated shifts, which we would state as a limitation.

## Provenance

Source: B5.2
