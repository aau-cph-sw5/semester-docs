> **Emergency Scenarios (Case A)** · Epic A-EP8: Access, roles and identity

**Size** S · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** compliance · **Proposed sprint** 3

## User story

As an administrator, I want each role limited to its permitted actions, so that no user can perform an action outside their responsibility.

## Context

Every case in the source document requires access control and none of them states what the roles actually are. Without the real roles this item will be built against invented ones and reworked later.

## Acceptance criteria

- [ ] The permission matrix is documented as data, listing every action against every role.
- [ ] Enforcement is server-side and a denied action returns a refusal rather than a partial effect.
- [ ] Every entry in the matrix is covered by a test asserting both permission and refusal.

## Dependencies

- Requires A-025.
- Blocked on the real role definitions from Metro.

## Open questions

- **[Answered · Metro, August 2026]** What roles exist and who may do what? **"All in CCR can activate a scenario. DOM can approve a restriction. Operation administration can amend the catalogue."** Four actors to model: CCR (the control room, collectively) activates and stands down scenarios; DOM, the *vagthavende driftschef*, approves restrictions; Operation Administration amends the catalogue; the Steward reports position, acknowledges instructions and records patrols. Two things follow. Scenario activation is not individually restricted, which fits an emergency where hesitation costs more than a wrong activation, so the model should not invent an approval step operational practice does not have. And the separation that does exist is between acting and amending the catalogue. The Operations Analyst named in the source stories has no act attached to them and should be dropped rather than given invented permissions.

## Provenance

Source: A7.1
