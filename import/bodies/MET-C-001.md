> **Operational Restrictions (Case C)** · Epic C-EP1: Foundation: lifecycle model and signature primitive

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** cross-team · **Type** spike · **Proposed sprint** 1

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

- Blocked until the written Operational Restriction procedure is received.
- Blocks C-002 and everything downstream of it.

## Open questions

- **[Blocking · Metro]** The written procedure for handling Operational Restrictions is required before this item can start.
- **[Blocking · Metro]** The AAU evaluation attached a condition to this case: a structured domain onboarding session of two to three hours in week one, covering the restriction lifecycle, roles and regulatory requirements. Can that be scheduled if the case is activated?
- **[Blocking · Metro]** How many restrictions are typically in force at once, and how many are raised in a month? Ten and two hundred are different products.

## Provenance

Source: AAU-added. No source story names the state machine that the whole case depends on.
