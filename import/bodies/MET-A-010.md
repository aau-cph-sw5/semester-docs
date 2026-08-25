> **Emergency Scenarios (Case A)** · Epic A-EP3: Shared situational overview

**Size** L · **Priority** Must · **Readiness** Needs refinement · **Track** mobile · **Type** feature · **Proposed sprint** 3

## User story

As a Steward, I want a clear graphical overview of the active scenario on my phone, so that I no longer have to navigate a document that is hard to read during a stressful situation.

## Context

Source story A2.1. Its criterion, that the required stations be identifiable within a few seconds, is a human-factors outcome rather than a system property. It cannot be asserted by the team that built the screen, so it has been moved to a measured test in A-027 and the system-level properties are specified here.

## Acceptance criteria

- [ ] The overview presents the scenario graphically rather than as a document to be scrolled.
- [ ] The steward own assignment is distinguished from the rest of the scenario without interaction.
- [ ] The overview is legible on the device the stewards actually carry, at the default system font size and at the largest accessibility font size.
- [ ] The overview renders from the local copy, so it is subject to A-005.
- [ ] No horizontal scrolling is required at any supported font size.

## Dependencies

- Requires A-003 and A-005.
- Design input needed from A-027.

## Open questions

- **[Answered · Metro, August 2026]** Which device do stewards carry? **Samsung Galaxy A52 to A55, mostly A52 and A55, on Android 14 and 15.** A 6.5 inch mid-range phone held in one hand, outdoors, at night, by somebody who is also walking. Android 14 as the floor puts minSdk at API 34.
- **[Answered · Metro, August 2026]** The PDF stewards use on their phones today. **Received** with the August material. Worth an hour of the team's time in sprint 1 before designing the replacement.

## Provenance

Source: A2.1
