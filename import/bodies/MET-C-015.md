> **Operational Restrictions (Case C)** · Epic C-EP6: Cancellation

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 6

## User story

As a Signer who signed the implementation, I want to confirm my awareness of the cancellation, so that the cancellation record matches the implementation record.

## Context

Source story C5.4, and the item with the most awkward failure mode in the case. A cancellation completes only when everyone who signed implementation has confirmed, which means one absent, transferred or departed colleague leaves a restriction permanently incomplete. The source story does not address this and the paper process must have some answer.

This item is scheduled for the last delivery sprint and was blocked on that answer until 28 August 2026, which was a bad combination. **If the question is still unanswered at the sprint 4 review, do not wait.** Build the documented override in the fourth acceptance criterion as the design: a named role, the duty operations manager on the evidence of the register, may record a confirmation as unobtainable, with a reason and the identity of the person who could not be reached, and the cancellation completes. Metro's answer, when it comes, then adjusts who holds that authority rather than whether the path exists. State the assumption in the architecture decision record so the examiner can see it was a choice.

## Acceptance criteria

- [ ] Everyone who signed the implementation is asked to confirm awareness of the cancellation.
- [ ] The cancellation completes when the last confirmation is signed.
- [ ] Outstanding confirmations are visible with the identity of who is awaited and for how long.
- [ ] A documented path exists for a confirmation that cannot be obtained, and using it is recorded with a reason.

## Dependencies

- Requires C-014.

## Open questions

- **[Answered · Metro and I3.4456, August 2026]** What happens today when someone who signed the implementation of a restriction is unavailable to confirm its cancellation? **The premise does not hold: cancellation is signed by the people on the current DOM list, not by the historical implementation signers.** The sheet carries implementation and cancellation columns for the current population and is closed when all relevant employees have signed both, then scanned and attached per I3.4456. Who counts as relevant at cancellation time is the residual detail to confirm, and the item should be re-derived at the next session.

## Provenance

Source: C5.4
