> **DID Master (Case D)** · Epic D-EP3: Natural-language search and ranking

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want a short reason why each candidate matches what I described, so that I can choose with confidence and judge when not to trust the ranking.

## Context

Source story D3.2. In a safety-relevant setting the rationale is what allows the operator to be a check on the system rather than a conduit for it, so it is closer to a requirement than to a refinement.

## Acceptance criteria

- [ ] Each candidate carries a rationale of at most 200 characters referencing a specific attribute of the query.
- [ ] The rationale is derived from the ranking, not composed independently of it, so it cannot contradict the score.
- [ ] A candidate whose rationale cannot be produced is not shown.

## Dependencies

- Requires D-010.

## Provenance

Source: D3.2
