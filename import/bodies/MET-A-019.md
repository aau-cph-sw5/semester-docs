> **Emergency Scenarios (Case A)** · Epic A-EP6: Decision support: classification and checklists

**Size** L · **Priority** Should · **Readiness** Needs refinement · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want to describe an incident in my own words and be offered a ranked shortlist of candidate scenarios, so that I can activate the right plan faster.

## Context

Source story A5.1, restated. The original specified an assistant returning a ranked shortlist, which any prompt satisfies and which no examiner can assess. Since no external model is supplied, the students implement the classifier themselves and measure it against A-020. The operator confirms before anything is activated, so the failure mode of a wrong suggestion is a wasted second rather than a wrong plan.

## Acceptance criteria

- [ ] A deterministic method maps a free-text description to a ranked shortlist of at most five candidate scenarios.
- [ ] The method is exposed behind an interface that permits a second implementation to be swapped in without changing callers.
- [ ] A suggested scenario is never activated without the explicit confirmation required by A-007.
- [ ] When no candidate exceeds the agreed confidence threshold, the operator is told so and offered the full list instead of a poor ranking.
- [ ] The approach, its assumptions and its known failure modes are documented.

## Dependencies

- Requires A-002 and A-007.
- Measured by A-020.

## Open questions

- **[Answered · Metro, August 2026]** In which language do operators type? **Danish.** The scenario material supplied in August is Danish throughout. The consequences are concrete: multilingual sentence embeddings rather than English-only models; Danish compounding makes pure lexical matching weak, so a hybrid of lexical and dense retrieval is the safer design; station and line abbreviations must survive tokenisation; and any evaluation set has to be Danish, which makes A-020 the highest-value outstanding request in the case.

## Provenance

Source: A5.1
