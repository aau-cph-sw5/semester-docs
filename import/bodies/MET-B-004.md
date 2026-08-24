> **Manning/patrol requirement (Case B)** · Epic B-EP2: Presence and patrol capture

**Size** M · **Priority** Must · **Readiness** Needs refinement · **Track** backend · **Type** feature · **Proposed sprint** 2

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

- **[Shaping · Metro]** What is the mandatory re-scan interval on a train? The revised story leaves it as *x* minutes. Held as configuration, the item can be built and demonstrated before the value is fixed.
- **[Shaping · Metro]** Does a missed re-scan end the manning record at the last valid scan, or continue it and flag the gap? The two produce different compliance figures for the same night.

## Provenance

Source: B1.1, revised August 2026
