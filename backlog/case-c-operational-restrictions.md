# Case C. Operational Restrictions

*Driftsrestriktioner*

A digital replacement for the paper-based Operational Restriction workflow: authoring, multi-party approval and signing, operator read-and-sign, cancellation, a register of restrictions in force, automatic notification, and a five-year archive, usable remotely.

| | |
|---|---|
| **AAU evaluation** | The AAU evaluation placed this case on hold, to be activated only if the team count requires a fourth product, with a structured domain onboarding session in week 1. This backlog is written so that the decision can be taken at the August session on the same evidence as the others. |
| **Metro contact** | Karsten Juhl (kju@metroservice.dk) |
| **Surfaces** | Desktop and mobile, usable from home and at the workstation. |
| **Data readiness** | No structured data. An existing written procedure for handling Operational Restrictions. The data model is derived from that procedure and from interviews. |

> This case has the richest source material of the four, 21 stories across 10 epics, and the highest proportion of items carrying a single acceptance criterion or none. The detail sits in the workflow structure rather than in the individual stories, which is why the state machine of C-001 and C-002 is the first thing this backlog builds.

## At a glance

**27 items.** Priority: 13 Must, 12 Should, 2 Could. Readiness: 16 ready, 2 needing refinement, 9 blocked on Metro input. Size: 5×S, 16×M, 5×L, 1×XL.

> **Updated 24 August 2026.** The written procedure has arrived, with the forms it operates on: the restriction register for each line, the signature sheet, and a worked restriction per line. That releases `MET-C-001` and, with Metro's answer that no regulatory standard applies, `MET-C-003`. Note that the two lines do not share a numbering convention.

**Minimum demonstrable product**, meaning the 7 Must items proposed for sprints 1 to 3: `MET-C-001`, `MET-C-002`, `MET-C-003`, `MET-C-004`, `MET-C-006`, `MET-C-021`, `MET-C-022`. This is the set to argue about at the August session. If it is wrong, everything after it is wrong too.

## Epics

| Epic | Name | Items |
|---|---|---|
| `C-EP1` | Foundation: lifecycle model and signature primitive | 3 |
| `C-EP2` | Authoring | 3 |
| `C-EP3` | Approval and implementation signing | 4 |
| `C-EP4` | Operator read-and-sign | 2 |
| `C-EP5` | Shift handover compliance | 1 |
| `C-EP6` | Cancellation | 2 |
| `C-EP7` | Register and status visibility | 3 |
| `C-EP8` | Notifications | 3 |
| `C-EP9` | Archiving and retention | 1 |
| `C-EP10` | Drafting support and conflict detection | 2 |
| `C-EP11` | Access control, audit and versioning | 2 |
| `C-EP12` | Inheritance and handover | 1 |

## Backlog index

| ID | Title | Epic | Size | Priority | Readiness | Sprint |
|---|---|---|---|---|---|---|
| `MET-C-001` | Document the Operational Restriction lifecycle as an explicit state model | C-EP1 | M | Must | Blocked | 1 |
| `MET-C-002` | State machine implementation with guarded transitions | C-EP1 | XL | Must | Blocked | 2 |
| `MET-C-003` | Signature primitive: identity, role, timestamp, immutability | C-EP1 | M | Must | Blocked | 2 |
| `MET-C-004` | Create a restriction with the required fields | C-EP2 | M | Must | Blocked | 3 |
| `MET-C-005` | Validation blocks submission of an incomplete restriction | C-EP2 | S | Should | Ready | 3 |
| `MET-C-006` | Originator signs the restriction | C-EP2 | S | Must | Ready | 3 |
| `MET-C-007` | Return-for-change loop between approver and originator | C-EP3 | M | Should | Blocked | 4 |
| `MET-C-008` | Duty Operations Manager reviews and signs approval | C-EP3 | M | Must | Ready | 4 |
| `MET-C-009` | Control Room Supervisor signs for implementation | C-EP3 | M | Must | Ready | 4 |
| `MET-C-010` | Remote signing from phone, tablet or remote desktop | C-EP3 | L | Must | Blocked | 5 |
| `MET-C-011` | Operator read-and-sign gate before taking the desk | C-EP4 | L | Must | Ready | 5 |
| `MET-C-012` | Duty Operations Manager signs the awareness list | C-EP4 | S | Should | Ready | 5 |
| `MET-C-013` | Signature completeness view across the CCR population | C-EP5 | M | Should | Ready | 5 |
| `MET-C-014` | Cancellation chain: originator, manager and supervisor signatures | C-EP6 | M | Should | Ready | 6 |
| `MET-C-015` | Implementation signers confirm awareness of a cancellation | C-EP6 | M | Should | Blocked | 6 |
| `MET-C-016` | Register of restrictions in force | C-EP7 | M | Must | Ready | 4 |
| `MET-C-017` | Signature completeness indication on a restriction | C-EP7 | S | Should | Ready | 5 |
| `MET-C-018` | Notification channel decision and delivery guarantees | C-EP8 | M | Should | Blocked | 3 |
| `MET-C-019` | Notification when an action is required | C-EP8 | M | Should | Ready | 4 |
| `MET-C-020` | Notification when a signed restriction is cancelled | C-EP8 | S | Should | Ready | 6 |
| `MET-C-021` | Versioned audit trail of every restriction and signature | C-EP11 | L | Must | Ready | 2 |
| `MET-C-022` | Role-based access control across the workflow | C-EP11 | M | Must | Blocked | 3 |
| `MET-C-023` | Automatic archiving and five-year retention | C-EP9 | M | Should | Blocked | 6 |
| `MET-C-024` | Assisted drafting of restriction text from structured input | C-EP10 | M | Could | Needs refinement | - |
| `MET-C-025` | Conflict detection against restrictions in force | C-EP10 | L | Could | Blocked | - |
| `MET-C-026` | Degraded behaviour for remote signing and register access | C-EP7 | M | Should | Ready | 6 |
| `MET-C-027` | Inheritance package for the 2027 cohort | C-EP12 | L | Must | Ready | 7 |

---

## C-EP1. Foundation: lifecycle model and signature primitive

### MET-C-001 · Document the Operational Restriction lifecycle as an explicit state model

`size:M` `prio:Must` `status:Ready` `track:cross-team` `type:spike` `sprint:1`

**As a team on this product, we want the restriction lifecycle documented as states, transitions, actors and guards, so that twenty backlog items are not each inventing their own version of it.**

The source backlog describes a complete workflow across ten epics and never names the state machine underneath it. Source epic C5 alone requires four signatures in sequence, each changing state, each with a notification and a failure path, and the register in C6 must reflect all of them. Nothing in epics C2 to C8 can be built correctly before this exists.

**Acceptance criteria**

- [ ] Every state a restriction can occupy is named, including the states reached when an approval is refused.
- [ ] Every transition names its actor, its guard condition and the events it emits.
- [ ] The model covers the cancellation chain to completion, including the case where an implementation signer has left the organisation.
- [ ] The model is traced to the written Metro procedure, and any state not evidenced by the procedure is marked as an assumption.
- [ ] The model is reviewed with the Metro domain expert and the outcome recorded.

**Dependencies**

- Blocks C-002 and everything downstream of it.

**Open questions**

- *[Answered · Metro, August 2026]* The written procedure. **Received**, as OPE-PR-S-400-04 Driftsrestriktioner, together with the restriction register for each line, the signature sheet used for each restriction, and one worked restriction per line. Enough of the state model is visible in the forms to start: a restriction carries a number, a restriction text, the initials of its originator, a date of implementation and a date of cancellation, and the register is closed off with the date and signature of the *vagthavende driftschef*, the DOM role Metro names as the approver. The two lines number restrictions differently, M1/M2 as `YYMMDD-NNNN` and M3/M4 as `DD-MM-YYYY-NNNN`, and their forms differ in layout. Whether the product imposes one scheme or carries both is a design decision to take with Metro rather than by default.
- *[Blocking · Metro]* The AAU evaluation attached a condition to this case: a structured domain onboarding session of two to three hours in week one, covering the restriction lifecycle, roles and regulatory requirements. Can that be scheduled if the case is activated?
- *[Answered in part · Metro, August 2026]* How many restrictions are in force at once? **Up to 50.** How many are raised in a month is still unanswered, though the registers supplied give an indication.

*Source: AAU-added. No source story names the state machine that the whole case depends on.*

### MET-C-002 · State machine implementation with guarded transitions

`size:XL` `prio:Must` `status:Blocked` `track:backend` `type:tech` `sprint:2`

**As a developer on this product, I want the lifecycle enforced in one place, so that no feature can move a restriction into a state the procedure does not allow.**

Follows C-001. Scattering the rules across the features that trigger them is the failure mode that makes safety workflows unauditable, and it is the one a first implementation reaches for.

**Acceptance criteria**

- [ ] Transitions are declared as data derived from the model of C-001, not as conditionals distributed through the features.
- [ ] An attempted transition that violates a guard is refused, and the refusal names the guard.
- [ ] Every transition emits an event to the audit record of C-021.
- [ ] The full lifecycle including cancellation is covered by tests that drive a restriction from draft to archive.
- [ ] Adding a state requires a change to the declaration and its tests, not to the features.

**Dependencies**

- Requires C-001.
- Blocks C-004 through C-018.

*Source: AAU-added, derived from C1 through C8.*

### MET-C-003 · Signature primitive: identity, role, timestamp, immutability

`size:M` `prio:Must` `status:Ready` `track:backend` `type:tech` `sprint:2`

**As a developer on this product, I want one signature mechanism used everywhere, so that every signature in the system carries the same guarantees.**

Eleven source stories across five epics require a signature, and none of them says what a signature is. Whether it is an authenticated click, a re-authentication, or something stronger is a decision with regulatory weight in a safety context, and it must be taken once rather than eleven times.

**Acceptance criteria**

- [ ] A signature records signer identity, role at the time of signing, the exact object version signed, and a server timestamp.
- [ ] Signatures are immutable. There is no code path that alters one, verified by a test.
- [ ] A signature is bound to a specific version of the restriction, so that altering the text after signing invalidates the signature rather than silently carrying it forward.
- [ ] The assurance level, meaning whether signing requires re-authentication, is recorded as a decision with its reason.
- [ ] The limits of the scheme are documented honestly against what a regulator might expect.

**Dependencies**

- Blocks C-006, C-008, C-009, C-011, C-012, C-014, C-015, C-016, C-017.

**Open questions**

- *[Answered · Metro, August 2026]* What does signing mean, and is there a regulatory standard? **"There is no regulatory standard the electronic equivalent must satisfy."** The signature sheets show what the act means in practice: each signatory initials to confirm having read and understood the restriction and its accompanying documents, and there are two signature moments, implementation and cancellation, recorded side by side for the same person. The duty operations manager puts a fresh sheet out when a new restriction is implemented. So the primitive is an acknowledgement, not an authorisation, and approval by the DOM is a separate act that should not be collapsed into it. With no external standard to inherit, the assurance level is a design decision the team must argue in an ADR: authenticated identity, a server-issued timestamp, an append-only record, and a binding to the exact version of the text that was displayed. Students should not invent an assurance level for a safety-critical signature.

*Source: AAU-added, derived from C1.2, C2.1, C2.2, C3.1, C3.2, C5.1 to C5.4.*

---

## C-EP2. Authoring

### MET-C-004 · Create a restriction with the required fields

`size:M` `prio:Must` `status:Blocked` `track:frontend` `type:feature` `sprint:3`

**As an Originator, I want to create a new Operational Restriction with the required fields, so that it can enter the approval workflow in a structured form.**

Source story C1.1. The fields themselves are the unknown, and they come from the existing paper form rather than from design.

**Acceptance criteria**

- [ ] A restriction is created in a draft state carrying all fields the procedure requires.
- [ ] The field set is derived from the existing paper form and traced to it.
- [ ] A draft is private to its originator until submitted.
- [ ] Creation is recorded to the audit record of C-021.

**Dependencies**

- Requires C-002.
- Blocked on the field set from the Metro procedure or form.

**Open questions**

- *[Blocking · Metro]* A copy or photograph of the existing Operational Restriction form would define the field set exactly. Deriving it from interviews will take a sprint and will still miss fields.

*Source: C1.1*

### MET-C-005 · Validation blocks submission of an incomplete restriction

`size:S` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As an Originator, I want to be prevented from submitting an incomplete restriction, so that nothing enters approval that the approver cannot act on.**

Source story C1.1, second criterion.

**Acceptance criteria**

- [ ] Submission is refused while any required field is empty, and the refusal names every missing field at once rather than one at a time.
- [ ] Validation is enforced server-side as well as in the client.
- [ ] A draft can be saved incomplete and returned to later.

**Dependencies**

- Requires C-004.

*Source: C1.1*

### MET-C-006 · Originator signs the restriction

`size:S` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As an Originator, I want to sign the restriction I created, so that my authorship is recorded and it can proceed to approval.**

Source story C1.2.

**Acceptance criteria**

- [ ] Signing records signer, role, restriction version and timestamp through the primitive of C-003.
- [ ] The restriction moves to awaiting approval, and the transition is refused if the signature fails.
- [ ] The signature is visible on the restriction with the identity and time.

**Dependencies**

- Requires C-003 and C-005.

*Source: C1.2*

---

## C-EP3. Approval and implementation signing

### MET-C-007 · Return-for-change loop between approver and originator

`size:M` `prio:Should` `status:Blocked` `track:backend` `type:feature` `sprint:4`

**As a Duty Operations Manager, I want to return a restriction to its originator with a requested change, so that a restriction I cannot approve is corrected rather than abandoned.**

This path appears only as trailing clauses in source stories C1.2 and C2.1, both of which read as afterthoughts. It is nonetheless a full state transition with a notification, a re-signing requirement and a version consequence, and it is the path most likely to be discovered late.

**Acceptance criteria**

- [ ] A refused restriction returns to a state in which the originator can edit it, carrying the reason for refusal.
- [ ] Editing a returned restriction invalidates the originator signature and requires re-signing.
- [ ] The refusal, its reason and its actor are recorded and visible in the history.
- [ ] The originator is notified per C-019.

**Dependencies**

- Requires C-002, C-003, C-006.

**Open questions**

- *[Blocking · Metro]* When a Duty Operations Manager cannot approve a restriction, does it return to the originator for editing, or is it rejected outright and a new one raised? The two stories that mention this path do not agree.

*Source: C1.2, C2.1, both as trailing clauses*

### MET-C-008 · Duty Operations Manager reviews and signs approval

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:4`

**As a Duty Operations Manager, I want to review and sign approval of a pending restriction, so that it can proceed to implementation.**

Source story C2.1.

**Acceptance criteria**

- [ ] A restriction awaiting approval is presented with its full text, its originator signature and its history.
- [ ] Approval signs through C-003 and moves the restriction to awaiting implementation.
- [ ] Refusal follows C-007 rather than terminating the restriction.
- [ ] Only a user holding the approver role can perform either action, enforced server-side.

**Dependencies**

- Requires C-003 and C-007.

*Source: C2.1*

### MET-C-009 · Control Room Supervisor signs for implementation

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:4`

**As a Control Room Supervisor, I want to sign an approved restriction to mark it implemented, so that it becomes active and visible to operators.**

Source story C2.2. This transition is the one that changes what operators must do, so it is the point at which the notification of C-019 has real consequences.

**Acceptance criteria**

- [ ] Signing for implementation moves the restriction into force and adds it to the register of C-017.
- [ ] Every operator who must read and sign it is determined at this moment and recorded.
- [ ] The transition notifies those operators per C-019.
- [ ] A restriction in force cannot be edited, only cancelled.

**Dependencies**

- Requires C-008.

**Open questions**

- *[Blocking · Metro]* When a restriction comes into force, is the set of operators required to sign it fixed at that moment, or does it include operators who join a later shift? The answer changes what the completeness view of C-016 can ever show as complete.

*Source: C2.2*

### MET-C-010 · Remote signing from phone, tablet or remote desktop

`size:L` `prio:Must` `status:Blocked` `track:cross-team` `type:feature` `sprint:5`

**As a Signer in any role, I want to sign remotely, so that I do not have to be physically present at inconvenient hours.**

Source story C2.3, and the item that carries most of the value Metro attributes to the case, since the present cost is staff being called in. It is also the item where the assurance question of C-003 becomes concrete, because remote signing and physical presence are not equivalent evidence.

**Acceptance criteria**

- [ ] Every signing action in the workflow is completable from a phone, a tablet and a desktop browser.
- [ ] The signing interface is usable at mobile width without horizontal scrolling.
- [ ] The assurance level decided in C-003 is applied identically regardless of device.
- [ ] The device class used for a signature is recorded with it.
- [ ] Behaviour when the connection drops mid-signature is specified: either the signature completed or it did not, never a partial state.

**Dependencies**

- Requires C-003 and C-008.

**Open questions**

- *[Blocking · Metro]* Is remote signing acceptable at the same assurance level as signing at the workstation, or does a remote signature need something additional? This is a governance question that determines the design.

*Source: C2.3*

---

## C-EP4. Operator read-and-sign

### MET-C-011 · Operator read-and-sign gate before taking the desk

`size:L` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:5`

**As a Control Room Operator, I want to read and sign every restriction in force before I take the desk, so that I am cleared to start work.**

Source story C3.1. A gate that can be clicked through instantly is not a gate, and a gate that cannot be passed in an emergency is a hazard. Both properties have to be designed rather than assumed, and the source story addresses neither.

**Acceptance criteria**

- [ ] On starting a shift, the operator is presented with every restriction in force they have not signed.
- [ ] Each must be opened before it can be signed; a bulk sign-all action does not exist.
- [ ] Signing records identity, restriction version and timestamp through C-003.
- [ ] The operator is shown how many remain and cannot reach the working interface until none do.
- [ ] An override path exists for an operator who must take the desk urgently, and every use of it is recorded and reported.

**Dependencies**

- Requires C-003 and C-009.

**Open questions**

- *[Blocking · Metro]* Should an operator be able to take the desk in an emergency without completing the read-and-sign gate? The paper process presumably allows a supervisor to permit it, and a system with no such path will be worked around.

*Source: C3.1*

### MET-C-012 · Duty Operations Manager signs the awareness list

`size:S` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:5`

**As a Duty Operations Manager, I want to sign the signature list of each restriction in force, so that the record of awareness is complete.**

Source story C3.2.

**Acceptance criteria**

- [ ] The manager signature appears on the list alongside the operator signatures.
- [ ] The signature is distinguishable by role in the list.
- [ ] A restriction is not treated as fully acknowledged until the required manager signature is present.

**Dependencies**

- Requires C-011.

*Source: C3.2*

---

## C-EP5. Shift handover compliance

### MET-C-013 · Signature completeness view across the CCR population

`size:M` `prio:Should` `status:Needs refinement` `track:frontend` `type:feature` `sprint:5`

**As a Control Room Supervisor, I want to see at a glance whether every operator on shift has signed every restriction in force, so that I can authorise them to take their desk with confidence.**

Source story C4.1, which asks for the state to be shown by colour. Colour alone is insufficient for a safety check that someone may perform quickly in poor lighting, so the requirement is restated with colour as one channel among at least two.

**Acceptance criteria**

- [ ] The view presents operators on shift against restrictions in force, with every unsigned combination identifiable.
- [ ] State is conveyed by at least two channels, one of which is not colour.
- [ ] The count of outstanding signatures is visible without interaction.
- [ ] The view states the time at which it was computed.

**Dependencies**

- Requires C-011 and C-012.

**Open questions**

- *[Answered · Metro, August 2026]* Where does the system learn which operators are on shift? **"It must be signed by all CCR employees every time."** That removes the dependency rather than satisfying it. The question is not who was on shift but which CCR employees have not yet signed, measured against the whole staff list, which is how the paper sheets work: pre-printed with every employee's initials and left out until all have signed. The item is therefore a completeness view over the CCR population rather than a shift handover view, and its outstanding list has no natural deadline at a shift boundary.
- *[Blocking · Metro]* What is the source of the CCR employee list? An Entra ID group is the natural candidate given Metro's platform document, and would let the product enumerate the population without holding personnel data itself.

*Source: C4.1*

---

## C-EP6. Cancellation

### MET-C-014 · Cancellation chain: originator, manager and supervisor signatures

`size:M` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:6`

**As an Originator, I want to cancel a restriction by signing it cancelled once its cause is resolved, and have that cancellation validated and taken out of force in sequence, so that the restriction stops applying through a controlled process.**

Source stories C5.1, C5.2 and C5.3, combined into one item. They are three signatures on one linear chain with no branching between them, and splitting them across sprints produces two sprints in which cancellation exists but does not work.

**Acceptance criteria**

- [ ] The originator signs to move the restriction to pending cancellation.
- [ ] The Duty Operations Manager confirms the cause is resolved and signs, moving it to control-room cancellation.
- [ ] The Control Room Supervisor signs to take it out of force.
- [ ] Each step is refused unless the previous one is complete, enforced by the state machine of C-002.
- [ ] A restriction out of force no longer appears in the register of C-017.

**Dependencies**

- Requires C-002, C-003, C-009.

**Open questions**

- *[Blocking · Metro]* Can someone other than the original originator start a cancellation, for example if that person has left or is unavailable? The source stories assume the originator is always available.

*Source: C5.1, C5.2, C5.3*

### MET-C-015 · Implementation signers confirm awareness of a cancellation

`size:M` `prio:Should` `status:Blocked` `track:backend` `type:feature` `sprint:6`

**As a Signer who signed the implementation, I want to confirm my awareness of the cancellation, so that the cancellation record matches the implementation record.**

Source story C5.4, and the item with the most awkward failure mode in the case. A cancellation completes only when everyone who signed implementation has confirmed, which means one absent, transferred or departed colleague leaves a restriction permanently incomplete. The source story does not address this and the paper process must have some answer.

**Acceptance criteria**

- [ ] Everyone who signed the implementation is asked to confirm awareness of the cancellation.
- [ ] The cancellation completes when the last confirmation is signed.
- [ ] Outstanding confirmations are visible with the identity of who is awaited and for how long.
- [ ] A documented path exists for a confirmation that cannot be obtained, and using it is recorded with a reason.

**Dependencies**

- Requires C-014.

**Open questions**

- *[Blocking · Metro]* What happens today when someone who signed the implementation of a restriction is unavailable to confirm its cancellation? Without an answer, a restriction can remain uncancellable indefinitely.

*Source: C5.4*

---

## C-EP7. Register and status visibility

### MET-C-016 · Register of restrictions in force

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:4`

**As a Control Room Operator, I want a front-page list of every restriction currently in force with its status, so that I always know what applies.**

Source story C6.1. This is the view an operator sees most often and it is therefore the one worth getting right first.

**Acceptance criteria**

- [ ] Every restriction in force is listed with its status and the date it came into force.
- [ ] The list is the landing view for the operator role.
- [ ] The operator own outstanding signatures are distinguished within the list.
- [ ] The list states when it was last refreshed and refreshes without navigation.

**Dependencies**

- Requires C-009.

*Source: C6.1*

### MET-C-017 · Signature completeness indication on a restriction

`size:S` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:5`

**As a user in any role, I want to see at a glance which signatures are present and which are missing, so that I can tell what a restriction still needs.**

Source story C6.2, which specifies colour. Restated with colour as one channel of two, consistent with C-013.

**Acceptance criteria**

- [ ] Complete and incomplete signature states are distinguished by at least two channels, one of which is not colour.
- [ ] Missing signatures are identified by role, and by person where the person is determined.
- [ ] The indication is identical in the register and on the restriction itself.

**Dependencies**

- Requires C-016.

*Source: C6.2*

### MET-C-026 · Degraded behaviour for remote signing and register access

`size:M` `prio:Should` `status:Ready` `track:cross-team` `type:feature` `sprint:6`

**As a Signer working remotely, I want to know whether what I am looking at is current, so that I do not sign against a stale version or believe a signature was recorded when it was not.**

No source story addresses connectivity. In this case the risk is not that the register is unreadable offline but that it is readable and wrong, which in a safety workflow is worse. A signature is the one action that must never appear to have succeeded when it did not.

**Acceptance criteria**

- [ ] The register displays the time it was last synchronised whenever the client is not connected.
- [ ] A signing action is either committed server-side or clearly reported as not completed; no path leaves it ambiguous.
- [ ] A signature attempted against a version superseded while the client was offline is refused with an explanation.
- [ ] Read access to restrictions in force degrades to a local copy marked as such rather than to an error.

**Dependencies**

- Requires C-010 and C-016.

*Source: AAU-added.*

---

## C-EP8. Notifications

### MET-C-018 · Notification channel decision and delivery guarantees

`size:M` `prio:Should` `status:Blocked` `track:backend` `type:tech` `sprint:3`

**As a Signer in any role, I want notifications to reach me reliably wherever I am, so that the workflow does not stall on someone not knowing it is their turn.**

Source stories C7.1 and C7.2 both require notification and neither says by what means. The value Metro attributes to the case depends on people acting promptly off site, which makes the channel a product decision rather than an implementation detail.

**Acceptance criteria**

- [ ] The channel or channels are chosen and the decision, with its alternatives, is recorded.
- [ ] A notification that fails to send is retried, and a notification that cannot be delivered is surfaced rather than lost.
- [ ] Notification state is visible on the restriction, so a stalled workflow can be diagnosed.
- [ ] No notification carries content that would be confidential outside the system.

**Dependencies**

- Blocks C-019 and C-020.

**Open questions**

- *[Blocking · Metro]* By what means should a signer be notified out of hours: email, SMS, an application notification, or a telephone call as today? This determines a substantial part of the design.

*Source: C7.1, C7.2*

### MET-C-019 · Notification when an action is required

`size:M` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:4`

**As a Signer in any role, I want to be notified when a restriction needs my signature, so that nothing waits on me without my knowing.**

Source story C7.1.

**Acceptance criteria**

- [ ] Reaching a step that requires a given role produces a notification to the holders of that role.
- [ ] The notification identifies the restriction and the action required.
- [ ] A completed action stops further reminders for that step.
- [ ] Notifications are recorded to the audit trail of C-021.

**Dependencies**

- Requires C-018 and C-002.

*Source: C7.1*

### MET-C-020 · Notification when a signed restriction is cancelled

`size:S` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:6`

**As a Signer, I want to be notified when a restriction I signed is cancelled and needs my confirmation, so that I confirm without being chased.**

Source story C7.2.

**Acceptance criteria**

- [ ] Cancellation reaching the confirmation step notifies every implementation signer individually.
- [ ] A reminder is sent after a configurable interval while a confirmation is outstanding.
- [ ] The reminder schedule is visible to the supervisor tracking the cancellation.

**Dependencies**

- Requires C-018 and C-015.

*Source: C7.2*

---

## C-EP9. Archiving and retention

### MET-C-023 · Automatic archiving and five-year retention

`size:M` `prio:Should` `status:Blocked` `track:backend` `type:feature` `sprint:6`

**As a Safety Officer, I want cancelled restrictions archived automatically once all signatures are collected and retained for five years, so that manual archiving disappears while the retention obligation is met.**

Source story C8.1. Retention interacts with the audit trail: what is archived, what remains searchable and what is eventually destroyed are three different questions and the source story answers only the first.

**Acceptance criteria**

- [ ] A restriction whose cancellation is complete moves to the archive without manual action.
- [ ] An archived restriction remains retrievable in full for five years.
- [ ] What happens after five years is specified rather than left to accumulate.
- [ ] Archiving is recorded in the audit trail with the triggering event.

**Dependencies**

- Requires C-015 and C-021.

**Open questions**

- *[Shaping · Metro]* After five years, must the record be destroyed, or may it be retained? The obligation to keep for five years and a prohibition on keeping longer are different requirements.

*Source: C8.1*

---

## C-EP10. Drafting support and conflict detection

### MET-C-024 · Assisted drafting of restriction text from structured input

`size:M` `prio:Could` `status:Needs refinement` `track:frontend` `type:feature`

**As an Originator, I want help turning what I know into the restriction text, so that authoring is faster and the result is consistent with previous restrictions.**

Source story C9.1, restated. The original assigned this to an assistant drafting from natural language. With no external model supplied, the deliverable is composition from structured input and from the phrasing of previous restrictions, which is more useful in a safety context because it produces consistency rather than novelty.

**Acceptance criteria**

- [ ] A draft is composed from structured input and from the text of comparable previous restrictions.
- [ ] The draft is fully editable and the originator remains the author of record.
- [ ] The restrictions used as a basis are identified, so the originator can check them.

**Dependencies**

- Requires C-004.

*Source: C9.1*

### MET-C-025 · Conflict detection against restrictions in force

`size:L` `prio:Could` `status:Blocked` `track:backend` `type:feature`

**As an Originator or Duty Operations Manager, I want potential conflicts with restrictions already in force to be flagged, so that contradictory restrictions are caught before implementation.**

Source story C9.2, and the item in the case with the highest value and the least available definition. Two restrictions conflict for domain reasons that the students cannot derive from a data model, so the rule has to come from Metro.

**Acceptance criteria**

- [ ] A draft restriction is checked against those in force and potential conflicts are listed with the reason for each.
- [ ] The conflict rules are documented as data and derived from Metro guidance rather than invented.
- [ ] A flagged conflict does not block submission; it is advisory and the decision remains with the approver.
- [ ] Detection is measured against a set of example pairs judged by the domain expert, and both misses and false alarms are reported.

**Dependencies**

- Requires C-016.
- Blocked on a definition of conflict from Metro.

**Open questions**

- *[Blocking · Metro]* What makes two Operational Restrictions conflict? Examples of pairs that did conflict, and pairs that looked as though they did but did not, would be worth more than a definition.

*Source: C9.2*

---

## C-EP11. Access control, audit and versioning

### MET-C-021 · Versioned audit trail of every restriction and signature

`size:L` `prio:Must` `status:Ready` `track:backend` `type:tech` `sprint:2`

**As a Safety Officer, I want a complete versioned audit trail of every restriction and signature, so that we have full traceability.**

Source story C10.2, which is the best-formed requirement in the source document and is brought forward to the second sprint because every other item writes to it.

**Acceptance criteria**

- [ ] Any change to a restriction preserves the prior version and records the actor.
- [ ] The history of a restriction shows every signature and state change with timestamps.
- [ ] The trail is append-only, with no code path that alters an entry.
- [ ] A restriction can be rendered as it stood at any past moment.
- [ ] Every signature references the exact version it was applied to, per C-003.

**Dependencies**

- Blocks C-002, C-004, C-019.

*Source: C10.2*

### MET-C-022 · Role-based access control across the workflow

`size:M` `prio:Must` `status:Blocked` `track:backend` `type:compliance` `sprint:3`

**As an administrator, I want each role limited to its permitted actions, so that the workflow cannot be short-circuited.**

Source story C10.1. This case has the largest role set of the four, naming Originator, Duty Operations Manager, Control Room Supervisor, Control Room Operator, Safety Officer and secondary safety and maintenance staff, and it defines none of them.

**Acceptance criteria**

- [ ] The permission matrix is documented as data, listing every action against every role.
- [ ] A user holding two roles cannot approve their own authorship, and the rule is enforced and tested.
- [ ] Enforcement is server-side and a denied action returns a refusal rather than a partial effect.
- [ ] Every entry in the matrix is covered by a test asserting both permission and refusal.

**Dependencies**

- Requires C-002.
- Blocked on the real role definitions.

**Open questions**

- *[Blocking · Metro]* What are the real roles and who may hold more than one? In particular, can the same person originate and approve a restriction when staffing is thin at night?

*Source: C10.1*

---

## C-EP12. Inheritance and handover

### MET-C-027 · Inheritance package for the 2027 cohort

`size:L` `prio:Must` `status:Ready` `track:cross-team` `type:tech` `sprint:7`

**As a member of the 2027 cohort, I want the lifecycle and its reasoning documented, so that I can extend the workflow without reconstructing the domain from scratch.**

This case carries more domain knowledge than the other three, and that knowledge lives in the heads of the team that ran the onboarding session. Losing it is the specific risk here.

**Acceptance criteria**

- [ ] The lifecycle model of C-001 is committed with its trace to the Metro procedure.
- [ ] Architecture decision records exist for the signature primitive, the notification channel and the archiving design.
- [ ] Characterisation tests drive a restriction through the full lifecycle including cancellation, and are written before any refactoring.
- [ ] A domain glossary maps every Danish operational term used in the code and the interface to its meaning.
- [ ] A handover note states what works, what does not, what was cut and why, and what the next team should do first.

**Open questions**

- *[Shaping · Metro]* A glossary of the Danish operational terms used across the cases would serve every product, and this case most of all. Two pages would save each team a week.

*Source: AAU-added.*

---
