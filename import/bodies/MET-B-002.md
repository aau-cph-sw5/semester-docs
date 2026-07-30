> **Steward Localization (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 1

## User story

As a developer on this product, I want station presence captured through a single positioning interface with a simulator behind it, so that coverage, dashboard and reporting can all be built and tested before any team touches a physical beacon.

## Context

Source story B1.1 bundles beacon detection, station identification and registration into one item, and behind it sit an indoor positioning subsystem, a reference dataset and unresolved logistics. Deferring the hardware behind an interface removes station access, device availability and safety induction from the critical path of everything downstream. The source backlog already proposes this pattern for train beacons in B3.2; this extends it to stations.

## Acceptance criteria

- [ ] The interface exposes one operation returning observed station identity, a confidence value and an observation timestamp.
- [ ] A simulator replays a scripted shift from a versioned fixture file.
- [ ] The fixture includes at least one gap exceeding the hourly patrol requirement and at least one ambiguous observation matching two adjacent stations.
- [ ] Every downstream component is built against the interface and passes its tests using the simulator alone, with no reference to BLE anywhere in them.
- [ ] The interface is published in the shared contract repository and reviewed by the mobile team before implementation.

## Dependencies

- Blocks B-004, B-007, B-012, B-014.

## Provenance

Source: B1.1, decomposed. Pattern taken from B3.2.
