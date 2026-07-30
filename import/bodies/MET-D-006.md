> **DID Master (Case D)** · Epic D-EP2: Browse, search and filter

**Size** M · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 3

## User story

As a Control Room Operator, I want to filter and sort Destination IDs by route attributes, so that I can narrow hundreds of options down to the relevant few.

## Context

Source story D2.1. This is also the fallback the ranking work of D-017 depends on: when no confident match exists, the operator is returned here rather than given a poor ranking.

## Acceptance criteria

- [ ] Filters cover origin, destination, intermediate points and behaviour, and combine.
- [ ] The result count is shown before the operator commits to reading the list.
- [ ] Results can be sorted by any filterable attribute.
- [ ] A filter combination yielding no results says so and offers to relax the most restrictive term.
- [ ] Filtering the full catalogue returns in under 500 ms at the 95th percentile on staging, reported with the sample size.

## Dependencies

- Requires D-003.

## Provenance

Source: D2.1
