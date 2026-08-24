> **Operational Restrictions (Case C)** · Epic C-EP1: Foundation: lifecycle model and signature primitive

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As a developer on this product, I want one signature mechanism used everywhere, so that every signature in the system carries the same guarantees.

## Context

Eleven source stories across five epics require a signature, and none of them says what a signature is. Whether it is an authenticated click, a re-authentication, or something stronger is a decision with regulatory weight in a safety context, and it must be taken once rather than eleven times.

## Acceptance criteria

- [ ] A signature records signer identity, role at the time of signing, the exact object version signed, and a server timestamp.
- [ ] Signatures are immutable. There is no code path that alters one, verified by a test.
- [ ] A signature is bound to a specific version of the restriction, so that altering the text after signing invalidates the signature rather than silently carrying it forward.
- [ ] The assurance level, meaning whether signing requires re-authentication, is recorded as a decision with its reason.
- [ ] The limits of the scheme are documented honestly against what a regulator might expect.

## Dependencies

- Blocks C-006, C-008, C-009, C-011, C-012, C-014, C-015, C-016, C-017.

## Open questions

- **[Answered · Metro, August 2026]** What does signing mean, and is there a regulatory standard? **"There is no regulatory standard the electronic equivalent must satisfy."** The signature sheets show what the act means in practice: each signatory initials to confirm having read and understood the restriction and its accompanying documents, and there are two signature moments, implementation and cancellation, recorded side by side for the same person. The duty operations manager puts a fresh sheet out when a new restriction is implemented. So the primitive is an acknowledgement, not an authorisation, and approval by the DOM is a separate act that should not be collapsed into it. With no external standard to inherit, the assurance level is a design decision the team must argue in an ADR: authenticated identity, a server-issued timestamp, an append-only record, and a binding to the exact version of the text that was displayed. Students should not invent an assurance level for a safety-critical signature.

## Provenance

Source: AAU-added, derived from C1.2, C2.1, C2.2, C3.1, C3.2, C5.1 to C5.4.
