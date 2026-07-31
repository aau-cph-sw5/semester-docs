> **Operational Restrictions (Case C)** · Epic C-EP7: Register and status visibility

**Size** M · **Priority** Should · **Readiness** Ready · **Track** cross-team · **Type** feature · **Proposed sprint** 6

## User story

As a Signer working remotely, I want to know whether what I am looking at is current, so that I do not sign against a stale version or believe a signature was recorded when it was not.

## Context

No source story addresses connectivity. In this case the risk is not that the register is unreadable offline but that it is readable and wrong, which in a safety workflow is worse. A signature is the one action that must never appear to have succeeded when it did not.

## Acceptance criteria

- [ ] The register displays the time it was last synchronised whenever the client is not connected.
- [ ] A signing action is either committed server-side or clearly reported as not completed; no path leaves it ambiguous.
- [ ] A signature attempted against a version superseded while the client was offline is refused with an explanation.
- [ ] Read access to restrictions in force degrades to a local copy marked as such rather than to an error.

## Dependencies

- Requires C-010 and C-016.

## Provenance

Source: AAU-added.
