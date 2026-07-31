> **DID Master (Case D)** · Epic D-EP3: Natural-language search and ranking

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 3

## User story

As a developer on this product, I want a deterministic ranker built before any learned method, so that we have a working product and a control condition to measure against.

## Context

Nothing in the source document asks for a baseline. It is the item that guarantees a deliverable if the ranking work disappoints, and it is the control that makes the measured comparison of D-018 meaningful. It is built first for both reasons.

## Acceptance criteria

- [ ] The baseline combines attribute matching with keyword matching over the description field and returns a ranked list for any query.
- [ ] It is exposed behind the contract of D-008 and is selectable at runtime.
- [ ] It is deterministic: the same query returns the same ranking, verified by a test.
- [ ] Its ranking logic is documented in enough detail that a reader could reimplement it.

## Dependencies

- Requires D-002 and D-008.

## Provenance

Source: AAU-added.
