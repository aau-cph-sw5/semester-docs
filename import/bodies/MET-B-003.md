> **Steward Localization (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** data · **Proposed sprint** 2

## User story

As a developer on this product, I want every station in scope modelled with its separate patrol areas, so that coverage can be computed for concourse and platform independently as the requirement demands.

## Context

Source story B2.1 requires that concourse and platform both be accounted for, which means they are distinct entities and not attributes of a station. The dataset is loaded from data rather than compiled in, because the network changes.

## Acceptance criteria

- [ ] Each station maps to its identifier, its line, and its distinct patrol areas.
- [ ] The dataset is loaded from a versioned file and reloading is idempotent.
- [ ] Stations serving two lines are modelled once and referenced twice rather than duplicated.
- [ ] A station added to the file appears in the system without a code change.

## Dependencies

- Blocked on the station layout data from Metro.
- Requires B-002.

## Open questions

- **[Blocking · Metro]** The station layout data, including concourse and platform areas as separate entities, is required before this item can start.
- **[Blocking · Metro]** How many stations and how many separate patrol areas are in scope per line, and how long does a full patrol round take? Sizing decisions depend on the order of magnitude.

## Provenance

Source: B2.1
