> **Emergency Scenarios (Case A)** · Epic A-EP2: Scenario selection and activation

**Size** M · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 2

## User story

As a Control Room Operator, I want to see which stations must be staffed for the selected scenario, so that I can direct stewards to the right locations.

## Context

Source story A1.2. Its criteria used the terms clearly marked and visually distinct, neither of which can fail a review. The indication rules are specified here and the coverage-gap rules are in A-012.

## Acceptance criteria

- [ ] Every station the active scenario requires is listed with the role required at it.
- [ ] Required stations are shown in the geographic or line order used by Metro rather than alphabetically.
- [ ] Station state is conveyed by at least two channels, one of which is not colour, so that the display does not depend on colour perception.
- [ ] The count of required stations and the count currently covered are both visible without interaction.

## Dependencies

- Requires A-002.

## Open questions

- **[Answered · Metro, August 2026]** What roles exist at a station, and can one steward hold more than one? **The steward is one role carrying a task list, and Metro has now written the list.** Be present and visible on the platform; inform passengers about train direction, changes of train and replacement services such as buses; manage passenger behaviour, for example spreading passengers along the platform rather than at one door; solve technical problems such as blocked train doors and platform screen doors; and set escalator direction to control the influx. A second steward may work at street level, slowing or preventing access to the platform to prevent overcrowding. The model that fits is a station assignment carrying a placement, platform or street level, and a task list, rather than a set of named roles a steward is matched against. It also confirms that one station can require two stewards at different placements, which is what Metro's own separation of steward-placement and steward-task documents already implied.

## Provenance

Source: A1.2
