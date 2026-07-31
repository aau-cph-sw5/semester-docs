> **Operational Restrictions (Case C)** · Epic C-EP5: Shift handover compliance

**Size** M · **Priority** Should · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 5

## User story

As a Control Room Supervisor, I want to see at a glance whether every operator on shift has signed every restriction in force, so that I can authorise them to take their desk with confidence.

## Context

Source story C4.1, which asks for the state to be shown by colour. Colour alone is insufficient for a safety check that someone may perform quickly in poor lighting, so the requirement is restated with colour as one channel among at least two.

## Acceptance criteria

- [ ] The view presents operators on shift against restrictions in force, with every unsigned combination identifiable.
- [ ] State is conveyed by at least two channels, one of which is not colour.
- [ ] The count of outstanding signatures is visible without interaction.
- [ ] The view states the time at which it was computed.

## Dependencies

- Requires C-011 and C-012.

## Open questions

- **[Blocking · Metro]** Where does the system learn which operators are on shift? There is no story covering rosters, and this view cannot be built without that information.

## Provenance

Source: C4.1
