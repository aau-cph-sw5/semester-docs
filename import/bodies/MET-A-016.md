> **Emergency Scenarios (Case A)** · Epic A-EP5: Low-radio dispatch

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want to send a dispatch instruction to one or several stewards in the application, so that I reduce radio traffic in already pressured situations.

## Context

Source story A4.1. The original criterion, that the instruction be clearly visible, is replaced by properties that can be tested.

## Acceptance criteria

- [ ] An instruction can be addressed to one steward, to several, or to everyone assigned to the active scenario.
- [ ] A sent instruction is stored with sender, recipients, text and timestamp, and appears in the incident log.
- [ ] An instruction is delivered to a client that is offline at send time on its next reconnection, not discarded.
- [ ] The instruction remains available to the steward until acknowledged, and is not dismissed by navigation.

## Dependencies

- Requires A-003 and A-006.

## Open questions

- **[Answered · Metro, August 2026]** Is there an existing protocol the instructions should follow? **No. Free text is preferred, and standard texts may come later**: if the function proves useful Metro will develop standard messages to copy in. The item is built as free text. The one decision it forces now is to give the message record a template reference from the start, so that a catalogue of standard texts can be added later without a schema change or a client release. A-022 stays a Could and becomes the place that catalogue would live.

## Provenance

Source: A4.1
