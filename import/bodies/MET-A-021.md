> **Emergency Scenarios (Case A)** · Epic A-EP6: Decision support: classification and checklists

**Size** M · **Priority** Should · **Readiness** Needs refinement · **Track** frontend · **Type** feature · **Proposed sprint** 4

## User story

As a Control Room Operator, I want the response checklist for the active scenario available to me, so that I do not miss steps under pressure.

## Context

Source story A5.2. Whether checklists exist today as written artefacts determines whether this item is data entry or design.

## Acceptance criteria

- [ ] The checklist for the active scenario is reachable in one action from the scenario view.
- [ ] Checklist items are reference data held with the scenario, not application code.
- [ ] Completing an item records the actor and the timestamp to the incident log.
- [ ] Progress through the checklist survives a page reload and an operator handover.

## Dependencies

- Requires A-002 and A-023.

## Open questions

- **[Blocking · Metro]** Do response checklists exist today, in the presentations or elsewhere, or would the students be designing them? This changes the item from data modelling to content design.

## Provenance

Source: A5.2
