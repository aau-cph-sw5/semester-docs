> **DID Master (Case D)** · Epic D-EP3: Natural-language search and ranking

**Size** S · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want to be told plainly when nothing matches well, so that I am not pushed toward a poor choice by a list that looks confident.

## Context

The second criterion of source story D3.1, which defines neither a good match nor a way to fail. In a decision-support tool for a safety-relevant action, a confident-looking wrong answer is the most dangerous output the system can produce, so abstention is a Must rather than a refinement of D-010.

## Acceptance criteria

- [ ] When the top candidate scores below the agreed threshold, the interface states that no confident match was found.
- [ ] In that case the operator is offered the filter view of D-006 rather than a ranked list.
- [ ] The threshold is configurable and its value is justified by the measurement in D-018 rather than chosen arbitrarily.
- [ ] Abstention rate is reported alongside accuracy, since a system that abstains on everything is trivially never wrong.

## Dependencies

- Requires D-010 and D-006.

## Provenance

Source: D3.1
