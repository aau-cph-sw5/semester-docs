> **Emergency Scenarios (Case A)** · Epic A-EP5: Low-radio dispatch

**Size** M · **Priority** Should · **Readiness** Blocked · **Track** mobile · **Type** tech · **Proposed sprint** 4

## User story

As a Steward, I want to be alerted when an instruction arrives even if the application is not in the foreground, so that I do not miss a dispatch while doing something else.

## Context

The source document assumes instructions reach stewards but says nothing about how. On a managed device in a metro environment this is a substantive decision with a hardware and network dependency, and it is easy to discover in November that the chosen channel is not available.

## Acceptance criteria

- [ ] The delivery channel is chosen, and the alternatives and the reason for the choice are recorded in an architecture decision record.
- [ ] An instruction sent while the application is in the background produces a visible alert on the device.
- [ ] Behaviour when the device has no connection at send time is specified and tested.
- [ ] Any dependency on a third-party service is named, together with what happens when it is unavailable.

## Dependencies

- Requires A-016.
- Blocked on the device question in A-010.

## Open questions

- **[Blocking · Metro]** Are the steward devices managed by Metro, and is a push notification service reachable from them? If Google services are unavailable on the device, the design changes.

## Provenance

Source: AAU-added.
