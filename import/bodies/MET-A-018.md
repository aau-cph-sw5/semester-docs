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

- **[Answered in part · Metro, August 2026]** The device is a consumer Samsung Galaxy A52 to A55 on Android 14 or 15, so Google Play services can be assumed present and Firebase Cloud Messaging is a reasonable default rather than a gamble. **Still blocking:** are the phones enrolled in a mobile device management system, and if so which one? That decides whether an app can be pushed to them at all, whether notification permissions can be granted centrally, and whether a managed configuration can be read at install time.

## Provenance

Source: AAU-added.
