> **DID Master (Case D)** · Epic D-EP3: Natural-language search and ranking

**Size** M · **Priority** Must · **Readiness** Ready · **Track** cross-team · **Type** contract · **Proposed sprint** 2

## User story

As a developer on either side, I want a published contract for queries and ranked results, so that the client and the ranking service can be built in parallel and either implementation can be replaced.

## Context

This is the cross-team interface of the product and it is also what allows the baseline of D-009 and the ranking of D-010 to be swapped and compared without either team rewriting anything.

## Acceptance criteria

- [ ] The contract covers the query, the ranked candidates, per-candidate score and rationale, and the abstention case.
- [ ] Both the baseline and the ranking implementation satisfy the same contract, verified by a shared test suite.
- [ ] The contract is versioned and committed to a shared repository path.
- [ ] A stub implementation is available to the client team before the real one exists.

## Dependencies

- Blocks D-009, D-010, D-011.

## Provenance

Source: AAU-added.
