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

- **[Answered in part · Metro, August 2026]** Is there an existing identity system whose role model the students should mirror? **The intention is three levels of access, and two of them are not personal.** Operators sign in on a common control-room login, stewards start the app with no login at all, and an administrator or analyst account is separate. That is buildable, and it carries one consequence to settle now rather than discover late: an event log whose actor is a shared operator account records what was done and not who decided it, which is exactly what the post-incident review in A-024 needs. Either the log attributes actions to a position and Metro accepts that, or the control room needs individual logins. The question has been put back. On the steward side the absence of a login is workable rather than a gap, because SOTI managed configuration can carry the device's steward identity, so the record stays attributable without asking a steward to type a password on a platform at night.

## Provenance

Source: A7.1
