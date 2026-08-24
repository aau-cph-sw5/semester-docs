> **Manning/patrol requirement (Case B)** · Epic B-EP1: Foundation: positioning abstraction and station reference data

**Size** S · **Priority** Must · **Readiness** Ready · **Track** cross-team · **Type** spike · **Proposed sprint** 1

## User story

As a team on this product, we want a recorded decision on what constitutes evidence of presence, so that every downstream item means the same thing by a patrol record.

## Context

Source story B1.1 asks for both designs at once. Its title specifies automatic registration via beacons; its first acceptance criterion specifies creating a record with a single tap. These are different products with different evidence value, different failure modes and a different feel for the person being recorded. Everything in epics B3, B4 and B8 depends on the answer, so it is taken first and recorded as an architecture decision record.

## Acceptance criteria

- [ ] The decision is recorded as an architecture decision record naming the option chosen, the options rejected and the reason.
- [ ] The consequence for the compliance report is stated explicitly: what the report is entitled to assert under the chosen rule.
- [ ] The consequence for the steward is stated: what they must do, and what happens if they do not.
- [ ] The decision is confirmed by the Metro domain expert before B-004 begins.

## Dependencies

- Blocks B-004, B-005, B-007, B-014.

## Open questions

- **[Answered · Metro, August 2026]** Is a patrol record created automatically, or does the steward confirm it? **"The steward confirms it or starts/stops the record."** The revised story B1.1 specifies the mechanism: the steward presses Start/Fortsæt and scans a bar or QR code to open a record, and Stop plus a scan to close it, on a station level and inside a train. The evidence rule to record in the ADR is therefore that a record is created by a scanned, timestamped act of the steward, with a beacon reading as corroborating context rather than evidence.

## Provenance

Source: B1.1, decomposed
