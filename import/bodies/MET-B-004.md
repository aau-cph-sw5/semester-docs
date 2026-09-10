> **Manning/patrol requirement (Case B)** · Epic B-EP2: Presence and patrol capture

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 2

## User story

As a Steward, I want my presence at a station recorded, so that the work I do is documented without a radio call or a paper form.

## Context

Source story B1.1, revised by Metro Service on 28 August 2026, which specifies the capture mechanism in detail. The steward opens and closes a session; records inside it are created from beacon observations. Written against the interface of B-002 and tested against the simulator of B-025, so that it needs no hardware.

## Acceptance criteria

- [ ] Start/Fortsæt begins a patrol session and Stop ends it. A beacon connection outside a session creates nothing.
- [ ] Within a session, a record is initiated once a beacon is connected and completed for an area once its beacon connection has been held for x seconds. A connection that never reaches x seconds does not save a record and is discarded.
- [ ] A connection that drops and returns within the tolerated gap continues the same record rather than opening a second one, or closing the previous one. The tolerated gap is recorded as a design decision, since Bluetooth connections drop briefly and recover without the steward having moved.
- [ ] A record closes when its connection has been lost for longer than the tolerated gap, and its end time is the last confirmed connection.
- [ ] Pressing Stop closes every open record at its last confirmed connection, records with connections for more than x seconds are saved; connections shorter than that were never records and are discarded.
- [ ] Records for more than one area may be open at the same time.
- [ ] Every record carries which area it was taken in, so that station coverage and train manning are computed from one stream.

## Dependencies

- Blocked by B-001, B-002, B-003, B-020.
- Blocks B-005, B-006, B-007.

## Open questions

- **[Shaping · Metro]** What closes a record when the steward never presses Stop, for example at the end of a shift? Loss of the beacon connection closes a record, but a session left open has no closing event of its own.
- **[Answered · Metro, August 2026]** What is the mandatory re-scan interval on a train? **Metro asks for it to be an open input field, and six minutes otherwise.** Held as configuration, which is what the item already assumed, with six minutes as the default. One addition: the interval in force must be recorded on the shift, so that a compliance figure can be recomputed later against the value that actually applied rather than against today's setting.
- **[Answered · Metro, August 2026]** Does a missed re-scan end the manning record, or continue it and flag the gap? **Continue it, and flag the gap.** Metro's reason is operational: the steward may be occupied by a troubling passenger while the train is still manned. So a missed scan does not close the record, the manning time is not interrupted for the compliance calculation, and the gap is recorded and shown. Two things follow: the flag belongs in the exported report as well as on the dashboard, and there must be a rule for when a record closes without a Stop scan, because a record that never ends counts as manning for the rest of the night. That rule has been put back to Metro.

## Provenance

Source: B1.1, revised August 2026
