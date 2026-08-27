> **Manning/patrol requirement (Case B)** · Epic B-EP6: Coverage analytics and forecasting

**Size** L · **Priority** Could · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** unscheduled

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

- **[Answered · Metro, August 2026]** Does any historical record of night-shift coverage exist? **No. There are no records of this.** The forecast can therefore be trained and tested only on simulated shifts, and that limitation belongs in the report rather than being left for a reader to discover. Two consequences for the semester. This item and B-016 stay Could and stay outside the minimum demonstrable product. And with no real data here and Case D deprioritised, the scenario suggestion in A-019 and its evaluation in A-020 are the only place in the whole semester where a measured result against real Metro material remains possible, which is why A-020 has been kept rather than deleted.

## Provenance

Source: B5.2
