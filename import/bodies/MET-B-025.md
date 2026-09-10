> **Manning/patrol requirement (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 1

## User story

As a developer on this product, I want a simulator behind the positioning interface, so that every downstream component can be built and tested before any team touches a physical beacon.

## Context

Split from B-002 so that the published contract and the implementation behind it are separate work. The contract can be agreed in sprint 1 and reviewed by the consuming teams; the simulator that makes it testable is a separate build. Without the fixture this item defines, the coverage computation of B-007 and the duplicate handling of B-006 have nothing to run against.

## Acceptance criteria

- [ ] A simulator replays a scripted shift from a versioned fixture file.
- [ ] The fixture includes at least one gap exceeding the hourly patrol requirement, at least one period with two areas observed at once, and at least one connection that drops and returns within a few seconds.
- [ ] Every downstream component is built against the interface and passes its tests using the simulator alone, with no reference to BLE anywhere in them.

## Dependencies

- Blocked by B-002.
- Blocks B-006, B-007.

## Provenance

Source: B1.1, decomposed. Split from B-002.
