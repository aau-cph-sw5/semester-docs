> **Manning/patrol requirement (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 1

## User story

As a developer on this product, I want station presence captured through a single positioning interface with a simulator behind it, so that coverage, dashboard and reporting can all be built and tested before any team touches a physical beacon.

## Context

Source story B1.1 bundles beacon detection, station identification and registration into one item, and behind it sit an indoor positioning subsystem, a reference dataset and unresolved logistics. Putting the hardware behind an interface removes station access, device availability and safety induction from the critical path of everything downstream. The source backlog already proposes this pattern for train beacons in B3.2; this extends it to stations.

## Acceptance criteria

- [ ] The interface exposes one operation returning what the device currently observes, each observation carrying an area identifier, and an observation timestamp.
- [ ] The interface reports when an area that was being observed is no longer observed, so that a consumer can close a record without polling.
- [ ] A simulator replays a scripted shift from a versioned fixture file.
- [ ] The fixture includes at least one gap exceeding the hourly patrol requirement, at least one period with two areas observed at once, and at least one connection that drops and returns within a few seconds.
- [ ] Every downstream component is built against the interface and passes its tests using the simulator alone, with no reference to BLE anywhere in them.
- [ ] The interface is published in the shared contract repository and reviewed by the mobile team before implementation.
- [ ] The shape the interface returns is recorded as an architecture decision record (ADR) naming the option chosen, the option rejected and the reason.

## Dependencies

- Blocks B-004, B-007, B-012, B-014.

## Open questions

- **[Shaping · Metro]** What does a beacon broadcast, and in what format? Whether the payload identifies its own location or carries only an identifier decides what the interface returns, and whether it returns one observation or the set currently in range.

## Provenance

Source: B1.1, decomposed. Pattern taken from B3.2.
