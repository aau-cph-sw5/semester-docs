> **Operational Restrictions (Case C)** · Epic C-EP1: Foundation: lifecycle model and signature primitive

**Size** M · **Priority** Must · **Readiness** Ready · **Track** cross-team · **Type** spike · **Proposed sprint** 1

## User story

As a team on this product, we want the restriction lifecycle documented as states, transitions, actors and guards, so that twenty backlog items are not each inventing their own version of it.

## Context

The source backlog describes a complete workflow across ten epics and never names the state machine underneath it. Source epic C5 alone requires four signatures in sequence, each changing state, each with a notification and a failure path, and the register in C6 must reflect all of them. Nothing in epics C2 to C8 can be built correctly before this exists.

## Acceptance criteria

- [ ] Every state a restriction can occupy is named, including the states reached when an approval is refused.
- [ ] Every transition names its actor, its guard condition and the events it emits.
- [ ] The model covers the cancellation chain to completion, including the case where an implementation signer has left the organisation.
- [ ] The model is traced to the written Metro procedure, and any state not evidenced by the procedure is marked as an assumption.
- [ ] The model is reviewed with the Metro domain expert and the outcome recorded.

## Dependencies

- Blocks C-002 and everything downstream of it.

## Open questions

- **[Answered · Metro, August 2026]** The written procedure. **Received**, as OPE-PR-S-400-04 Driftsrestriktioner, together with the restriction register for each line, the signature sheet used for each restriction, and one worked restriction per line. Enough of the state model is visible in the forms to start: a restriction carries a number, a restriction text, the initials of its originator, a date of implementation and a date of cancellation, and the register is closed off with the date and signature of the *vagthavende driftschef*, the DOM role Metro names as the approver. The two lines number restrictions differently, M1/M2 as `DDMMYY-NNNN` and M3/M4 as `DD-MM-YYYY-NNNN`, and their forms differ in layout. The unified procedure I3.4456, effective 18 March 2026, prescribes `DDMMYYYY-XXXX` for both lines, unique per line, which settles the scheme going forward.
- **[Shaping · Metro]** The AAU evaluation attached a condition to this case: a structured domain onboarding session of two to three hours in week one, covering the restriction lifecycle, roles and regulatory requirements. Can that be scheduled if the case is activated? Now that the written procedure has arrived the item can proceed without it, but the session remains the single most useful thing Metro could give this case.
- **[Answered in part · Metro, August 2026]** How many restrictions are in force at once? **Up to 50.** How many are raised in a month is still unanswered, though the registers supplied give an indication.

## Provenance

Source: AAU-added. No source story names the state machine that the whole case depends on.
