> **Operational Restrictions (Case C)** · Epic C-EP5: Shift handover compliance

**Size** M · **Priority** Should · **Readiness** Needs refinement · **Track** frontend · **Type** feature · **Proposed sprint** 5

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

- **[Answered · Metro, August 2026]** Where does the system learn which operators are on shift? **"It must be signed by all CCR employees every time."** That removes the dependency rather than satisfying it. The question is not who was on shift but which CCR employees have not yet signed, measured against the whole staff list, which is how the paper sheets work: pre-printed with every employee's initials and left out until all have signed. The item is therefore a completeness view over the CCR population rather than a shift handover view, and its outstanding list has no natural deadline at a shift boundary.
- **[Shaping · Metro]** What is the source of the CCR employee list? An Entra ID group is the natural candidate given Metro's platform document, and would let the product enumerate the population without holding personnel data itself. The view can be built against a synthetic population in the meantime, which is why this shapes the design rather than stopping it.

## Provenance

Source: C4.1
