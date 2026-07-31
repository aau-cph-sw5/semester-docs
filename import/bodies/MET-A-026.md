> **Emergency Scenarios (Case A)** · Epic A-EP8: Access, roles and identity

**Size** S · **Priority** Should · **Readiness** Blocked · **Track** backend · **Type** compliance · **Proposed sprint** 3

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

- **[Blocking · Metro]** What roles exist in the control room and among stewards today, and who is permitted to activate or stand down a scenario? The stories name an Operator, a Steward, an Operations Analyst and an Operations Administrator without defining any of them.

## Provenance

Source: A7.1
