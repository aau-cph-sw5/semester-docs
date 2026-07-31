> **Emergency Scenarios (Case A)** · Epic A-EP8: Access, roles and identity

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 2

## User story

As a user, I want to sign in and be given the interface and permissions for my role, so that I see what is relevant to my job and cannot act outside it.

## Context

Source story A7.1. The story covers routing to the right interface. Enforcement of what each role may do is the separate concern in A-026.

## Acceptance criteria

- [ ] A steward login lands on the steward interface and an operator login on the control-room interface.
- [ ] Role is resolved server-side. A client cannot obtain a different interface by changing a request.
- [ ] Session expiry behaviour is specified, and an expired session does not silently discard queued offline reports.
- [ ] Test accounts for every role are seeded and documented for the other teams to use.

## Dependencies

- Blocks A-026.

## Open questions

- **[Detail · Metro]** Is there an existing identity system whose role model the students should mirror, even without integrating with it?

## Provenance

Source: A7.1
