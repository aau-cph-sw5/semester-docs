> **Operational Restrictions (Case C)** · Epic C-EP3: Approval and implementation signing

**Size** L · **Priority** Must · **Readiness** Blocked · **Track** cross-team · **Type** feature · **Proposed sprint** 5

## User story

As a Signer in any role, I want to sign remotely, so that I do not have to be physically present at inconvenient hours.

## Context

Source story C2.3, and the item that carries most of the value Metro attributes to the case, since the present cost is staff being called in. It is also the item where the assurance question of C-003 becomes concrete, because remote signing and physical presence are not equivalent evidence.

## Acceptance criteria

- [ ] Every signing action in the workflow is completable from a phone, a tablet and a desktop browser.
- [ ] The signing interface is usable at mobile width without horizontal scrolling.
- [ ] The assurance level decided in C-003 is applied identically regardless of device.
- [ ] The device class used for a signature is recorded with it.
- [ ] Behaviour when the connection drops mid-signature is specified: either the signature completed or it did not, never a partial state.

## Dependencies

- Requires C-003 and C-008.

## Open questions

- **[Blocking · Metro]** Is remote signing acceptable at the same assurance level as signing at the workstation, or does a remote signature need something additional? This is a governance question that determines the design.

## Provenance

Source: C2.3
