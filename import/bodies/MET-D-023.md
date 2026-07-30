> **DID Master (Case D)** · Epic D-EP3: Natural-language search and ranking

**Size** S · **Priority** Should · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want the catalogue to remain usable when the ranking service is not, so that a component failure does not leave me worse off than before the system existed.

## Context

No source story addresses failure of any component. The operator has a working method today, so a product that fails closed is worse than no product. Falling back to the filter view of D-006 preserves the operator ability to work.

## Acceptance criteria

- [ ] A ranking request that errors or exceeds its timeout falls back to the filter view of D-006.
- [ ] The interface states that assisted ranking is unavailable rather than showing an empty result.
- [ ] The fallback is exercised by a test that disables the ranking service.

## Dependencies

- Requires D-006 and D-010.

## Provenance

Source: AAU-added.
