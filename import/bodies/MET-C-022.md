> **Operational Restrictions (Case C)** · Epic C-EP11: Access control, audit and versioning

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** compliance · **Proposed sprint** 3

## User story

As an administrator, I want each role limited to its permitted actions, so that the workflow cannot be short-circuited.

## Context

Source story C10.1. This case has the largest role set of the four, naming Originator, Duty Operations Manager, Control Room Supervisor, Control Room Operator, Safety Officer and secondary safety and maintenance staff, and it defines none of them.

## Acceptance criteria

- [ ] The permission matrix is documented as data, listing every action against every role.
- [ ] A user holding two roles cannot approve their own authorship, and the rule is enforced and tested.
- [ ] Enforcement is server-side and a denied action returns a refusal rather than a partial effect.
- [ ] Every entry in the matrix is covered by a test asserting both permission and refusal.

## Dependencies

- Requires C-002.
- The role definitions arrived with I3.4456 and the meeting of 28 August 2026.

## Open questions

- **[Answered in part · Metro and I3.4456, August 2026]** What are the real roles and who may hold more than one? **The originator is whoever owns the work area—typically the maintenance chief, a sector chief, a lead technician, the Betriebsleiter, the safety chief, the operations chief or an on-duty DOM; the DOM approves, the CRS implements, operators acknowledge, and the Betriebsleiter is the cancellation fallback.** An admin role, managing users and roles only, is an AAU addition to record as such. Still open, and sharper now that the DOM is himself a listed originator: may the same person originate and approve a restriction?

## Provenance

Source: C10.1
