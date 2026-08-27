> **Manning/patrol requirement (Case B)** · Epic B-EP2: Presence and patrol capture

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 2

## User story

As a Steward, I want my presence at a station recorded, so that the work I do is documented without a radio call or a paper form.

## Context

Source story B1.1, revised by Metro Service in August 2026, which now specifies the capture mechanism in detail. A record is opened and closed by a scan, not inferred from a detection. Written against the interface of B-002 so that it is testable without hardware.

## Acceptance criteria

- [ ] Start/Fortsæt followed by a scan of a code on a station level opens a patrol record for that level; Stop followed by a scan of a second code on the same level closes it.
- [ ] Start/Fortsæt followed by a scan of the code in a train opens a manning record; a further scan of the same code confirms continued presence; Stop followed by a scan closes it.
- [ ] A mandatory re-scan interval is enforced on trains, with the interval held as configuration rather than as a literal in the code.
- [ ] Stop without a scan closes an open train record, and the recorded time ends three minutes after the last valid scan rather than at the moment Stop was pressed.
- [ ] An open record is a representable state rather than an error, and the treatment of a record left open past the end of a shift is documented.
- [ ] Records are written through the append-only store of B-020.

## Dependencies

- Requires B-001, B-002, B-003.

## Open questions

- **[Shaping · Metro]** What closes a manning record when the steward never scans Stop, for example at the end of a shift or after a maximum duration? Metro has confirmed that a missed re-scan continues the record, so without a closing rule an unclosed record counts as manning for the rest of the night.
- **[Answered · Metro, August 2026]** What is the mandatory re-scan interval on a train? **Metro asks for it to be an open input field, and six minutes otherwise.** Held as configuration, which is what the item already assumed, with six minutes as the default. One addition: the interval in force must be recorded on the shift, so that a compliance figure can be recomputed later against the value that actually applied rather than against today's setting.
- **[Answered · Metro, August 2026]** Does a missed re-scan end the manning record, or continue it and flag the gap? **Continue it, and flag the gap.** Metro's reason is operational: the steward may be occupied by a troubling passenger while the train is still manned. So a missed scan does not close the record, the manning time is not interrupted for the compliance calculation, and the gap is recorded and shown. Two things follow: the flag belongs in the exported report as well as on the dashboard, and there must be a rule for when a record closes without a Stop scan, because a record that never ends counts as manning for the rest of the night. That rule has been put back to Metro.

## Provenance

Source: B1.1, revised August 2026
