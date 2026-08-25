> **Manning/patrol requirement (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** M · **Priority** Must · **Readiness** Needs refinement · **Track** backend · **Type** data · **Proposed sprint** 2

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

- Requires B-002. The station data this item was blocked on arrived with Metro's August material.

## Open questions

- **[Answered · Metro, August 2026]** The station layout data is required before this item can start. **Received**: a per-line list stating for each station whether it has a platform level only or a platform and a concourse level. M1/M2 has 22 stations of which 7 have a concourse, M3/M4 has 24 stations of which 23 do: 46 stations and 76 patrol levels in total. Each station carries a short code (VAN, KGN, CPH) which is the natural primary key. The beacon-to-station mapping was answered "not relevant", which follows from the move to bar and QR codes; what the dataset needs instead is a code identifier per level and per train.
- **[Shaping · Metro]** How long does a full patrol round take in practice? The station and level counts are now known; the round duration is not, and it is what decides whether the hourly requirement is comfortable or tight.
- **[Shaping · Metro]** The list of trains on both lines, which the revised user stories name as required data for the case. A synthetic fleet of the right order of magnitude lets the work proceed, so this shapes the fixture rather than stopping the item.

## Provenance

Source: B2.1
