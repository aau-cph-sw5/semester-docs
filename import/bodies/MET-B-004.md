> **Steward Localization (Case B)** · Epic B-EP2: Presence and patrol capture

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 2

## User story

As a Steward, I want my presence at a station recorded, so that the work I do is documented without a radio call or a paper form.

## Context

Source story B1.1, restated once B-001 has settled what a record means. Written against the interface of B-002 so that it is testable without hardware.

## Acceptance criteria

- [ ] An observation produces a presence record carrying steward, station, patrol area, timestamp and confidence.
- [ ] The rule chosen in B-001 is implemented, and the alternative rule is not partially present in the code.
- [ ] A departure is reflected in the record, either as an end time or as a separate observation, per the decision in B-001.
- [ ] Records are written through the append-only store of B-020.

## Dependencies

- Requires B-001, B-002, B-003.

## Provenance

Source: B1.1
