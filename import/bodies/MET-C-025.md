> **Operational Restrictions (Case C)** · Epic C-EP10: Drafting support and conflict detection

**Size** L · **Priority** Could · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** unscheduled

## User story

As an Originator or Duty Operations Manager, I want potential conflicts with restrictions already in force to be flagged, so that contradictory restrictions are caught before implementation.

## Context

Source story C9.2, and the item in the case with the highest value and the least available definition. Two restrictions conflict for domain reasons that the students cannot derive from a data model, so the rule has to come from Metro.

## Acceptance criteria

- [ ] A draft restriction is checked against those in force and potential conflicts are listed with the reason for each.
- [ ] The conflict rules are documented as data and derived from Metro guidance rather than invented.
- [ ] A flagged conflict does not block submission; it is advisory and the decision remains with the approver.
- [ ] Detection is measured against a set of example pairs judged by the domain expert, and both misses and false alarms are reported.

## Dependencies

- Requires C-016.
- Blocked on a definition of conflict from Metro.

## Open questions

- **[Blocking · Metro]** What makes two Operational Restrictions conflict? Examples of pairs that did conflict, and pairs that looked as though they did but did not, would be worth more than a definition.

## Provenance

Source: C9.2
