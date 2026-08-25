> **Operational Restrictions (Case C)** · Epic C-EP6: Cancellation

**Size** M · **Priority** Should · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 6

## User story

As a Signer who signed the implementation, I want to confirm my awareness of the cancellation, so that the cancellation record matches the implementation record.

## Context

Source story C5.4, and the item with the most awkward failure mode in the case. A cancellation completes only when everyone who signed implementation has confirmed, which means one absent, transferred or departed colleague leaves a restriction permanently incomplete. The source story does not address this and the paper process must have some answer.

This item is scheduled for the last delivery sprint and is blocked on that answer, which is a bad combination. **If the question is still unanswered at the sprint 4 review, do not wait.** Build the documented override in the fourth acceptance criterion as the design: a named role, the duty operations manager on the evidence of the register, may record a confirmation as unobtainable, with a reason and the identity of the person who could not be reached, and the cancellation completes. Metro's answer, when it comes, then adjusts who holds that authority rather than whether the path exists. State the assumption in the architecture decision record so the examiner can see it was a choice.

## Acceptance criteria

- [ ] Everyone who signed the implementation is asked to confirm awareness of the cancellation.
- [ ] The cancellation completes when the last confirmation is signed.
- [ ] Outstanding confirmations are visible with the identity of who is awaited and for how long.
- [ ] A documented path exists for a confirmation that cannot be obtained, and using it is recorded with a reason.

## Dependencies

- Requires C-014.

## Open questions

- **[Blocking · Metro]** What happens today when someone who signed the implementation of a restriction is unavailable to confirm its cancellation? Without an answer, a restriction can remain uncancellable indefinitely.

## Provenance

Source: C5.4
