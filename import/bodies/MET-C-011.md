> **Operational Restrictions (Case C)** · Epic C-EP4: Operator read-and-sign

**Size** L · **Priority** Must · **Readiness** Ready · **Track** frontend · **Type** feature · **Proposed sprint** 5

## User story

As a Control Room Operator, I want to read and sign every restriction in force before I take the desk, so that I am cleared to start work.

## Context

Source story C3.1. A gate that can be clicked through instantly is not a gate, and a gate that cannot be passed in an emergency is a hazard. Both properties have to be designed rather than assumed, and the source story addresses neither.

## Acceptance criteria

- [ ] On starting a shift, the operator is presented with every restriction in force they have not signed.
- [ ] Each must be opened before it can be signed; a bulk sign-all action does not exist.
- [ ] Signing records identity, restriction version and timestamp through C-003.
- [ ] The operator is shown how many remain and cannot reach the working interface until none do.
- [ ] An override path exists for an operator who must take the desk urgently, and every use of it is recorded and reported.

## Dependencies

- Requires C-003 and C-009.

## Open questions

- **[Blocking · Metro]** Should an operator be able to take the desk in an emergency without completing the read-and-sign gate? The paper process presumably allows a supervisor to permit it, and a system with no such path will be worked around.

## Provenance

Source: C3.1
