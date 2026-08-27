> **Manning/patrol requirement (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** data · **Proposed sprint** 2

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
- **[Answered · Metro, August 2026]** How long does a full patrol round take in practice? **Two minutes for any platform. Seven minutes for a concourse level, and Metro would prefer a per-station value it can adjust as it gains experience with the requirement.** Round duration is therefore reference data held on the station level, with seven minutes as the default, not a constant in the code. The arithmetic Metro attaches to it is the design constraint of the whole case: seven plus two is nine minutes against a ten-minute train interval, so a full station consumes almost exactly the time between trains. One minute of slack is what the schedule has, which is why the at-risk rule in B-008 and the gap detection in B-014 must reason about travel time rather than only about time elapsed since the last patrol.
- **[Answered · Metro, August 2026]** The list of trains on both lines. **Received as counts and identifier ranges: M1/M2 has 42 trains, permanent vehicle IDs 001 to 042; M3/M4 has 39, IDs 001 to 039.** The fixture is now real rather than synthetic, 81 trains in total. The identifier is per line rather than per fleet, so a train key must carry the line to be unique, and the seed data should say so explicitly. Which of them run on a given night is a separate matter, answered under B-010.

## Provenance

Source: B2.1
