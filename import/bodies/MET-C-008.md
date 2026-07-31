> **Operational Restrictions (Case C)** · Epic C-EP3: Approval and implementation signing

**Size** M · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 4

## User story

As a Duty Operations Manager, I want to review and sign approval of a pending restriction, so that it can proceed to implementation.

## Context

Source story C2.1.

## Acceptance criteria

- [ ] A restriction awaiting approval is presented with its full text, its originator signature and its history.
- [ ] Approval signs through C-003 and moves the restriction to awaiting implementation.
- [ ] Refusal follows C-007 rather than terminating the restriction.
- [ ] Only a user holding the approver role can perform either action, enforced server-side.

## Dependencies

- Requires C-003 and C-007.

## Provenance

Source: C2.1
