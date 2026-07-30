> **DID Master (Case D)** · Epic D-EP3: Natural-language search and ranking

**Size** L · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want to describe the destination or service I need in plain language and get a ranked shortlist, so that I do not have to know the exact Destination ID name in advance.

## Context

Source story D3.1, the core of the case. The original acceptance criteria are satisfied by any method returning a list, which is why the measurement in D-018 is part of this epic rather than optional. The students implement the ranking themselves; no external model is supplied.

## Acceptance criteria

- [ ] A plain-language query returns a ranked shortlist of at most five candidates through the contract of D-008.
- [ ] The method is documented, including how it represents the query and the catalogue, and what it cannot handle.
- [ ] The 95th-percentile response time stays under 3 seconds over the evaluation set on staging, reported with the sample size.
- [ ] The implementation is selectable against the baseline of D-009 at runtime, so both can be measured on the same traffic.
- [ ] The method is measured by D-018 and the figure is reported at a sprint review.

## Dependencies

- Requires D-008 and D-009.
- Measured by D-018.

## Open questions

- **[Blocking · Metro]** In which language do operators describe what they need? Ranking Danish free text against a Danish catalogue is a materially different problem from the English equivalent, and it changes the approach the students should take.

## Provenance

Source: D3.1
