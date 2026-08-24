# Case A. Emergency Scenarios

*Nød-scenarier*

A shared situational-awareness tool that lets the control room select the active emergency or alternative-operation scenario and gives both the control room and the stewards a live graphical overview, replacing a document that is hard to navigate under pressure and reducing radio traffic.

| | |
|---|---|
| **AAU evaluation** | Recommended by the AAU evaluation as the centre of the semester plan. |
| **Metro contact** | Karsten Juhl (KJU@metroservice.dk) |
| **Surfaces** | Control-room web dashboard and steward Android application, kept in real-time sync. |
| **Data readiness** | No dataset. Two presentations describe the alternative-operation scenarios, one per line. The domain model is derived from these and from interviews. |

## At a glance

**28 items.** Priority: 13 Must, 13 Should, 2 Could. Readiness: 20 ready, 5 needing refinement, 3 blocked on Metro input. Size: 7×S, 12×M, 9×L.

> **Updated 24 August 2026** against Metro Service's answers. The alternative-operation material for both lines has arrived, which releases `MET-A-001` and with it the whole case. The steward device is a Samsung Galaxy A52 to A55 on Android 14 or 15, operators type in Danish, and the role model is settled: CCR activates scenarios, DOM approves restrictions, Operation Administration amends the catalogue.

**Minimum demonstrable product**, meaning the 12 Must items proposed for sprints 1 to 3: `MET-A-001`, `MET-A-002`, `MET-A-003`, `MET-A-004`, `MET-A-005`, `MET-A-007`, `MET-A-008`, `MET-A-010`, `MET-A-011`, `MET-A-013`, `MET-A-023`, `MET-A-025`. This is the set to argue about at the August session. If it is wrong, everything after it is wrong too.

## Epics

| Epic | Name | Items |
|---|---|---|
| `A-EP1` | Foundation and scenario domain model | 3 |
| `A-EP2` | Scenario selection and activation | 3 |
| `A-EP3` | Shared situational overview | 5 |
| `A-EP4` | Steward self-localization and status | 3 |
| `A-EP5` | Low-radio dispatch | 3 |
| `A-EP6` | Decision support: classification and checklists | 4 |
| `A-EP7` | Incident log and post-incident analysis | 2 |
| `A-EP8` | Access, roles and identity | 2 |
| `A-EP9` | Offline and degraded operation | 2 |
| `A-EP10` | Inheritance and handover | 1 |

## Backlog index

| ID | Title | Epic | Size | Priority | Readiness | Sprint |
|---|---|---|---|---|---|---|
| `MET-A-001` | Derive the scenario domain model from the Metro alternative-operation presentations | A-EP1 | M | Must | Ready | 1 |
| `MET-A-002` | Scenario reference data schema, persistence and seed loader | A-EP1 | L | Must | Blocked | 2 |
| `MET-A-003` | Scenario state contract published and versioned | A-EP1 | M | Must | Ready | 1 |
| `MET-A-004` | Real-time propagation of scenario and position changes to connected clients | A-EP3 | L | Must | Ready | 2 |
| `MET-A-005` | Active scenario and own assignment readable with no network | A-EP9 | L | Must | Ready | 3 |
| `MET-A-006` | Reconnection, reconciliation and exactly-once delivery of queued reports | A-EP9 | L | Should | Ready | 4 |
| `MET-A-007` | Operator selects and activates a scenario from the predefined list | A-EP2 | M | Must | Ready | 2 |
| `MET-A-008` | Required staffing for the active scenario shown to the operator | A-EP2 | M | Must | Ready | 2 |
| `MET-A-009` | Operator changes or stands down the active scenario | A-EP2 | S | Should | Ready | 3 |
| `MET-A-010` | Steward graphical scenario overview on the mobile client | A-EP3 | L | Must | Needs refinement | 3 |
| `MET-A-011` | Control-room live coverage overview with steward positions | A-EP3 | L | Must | Ready | 3 |
| `MET-A-012` | Coverage gap rules and derived station state | A-EP3 | S | Should | Needs refinement | 3 |
| `MET-A-013` | Steward sets current location with a single action | A-EP4 | M | Must | Ready | 3 |
| `MET-A-014` | Steward marks a required station as covered | A-EP4 | S | Should | Ready | 3 |
| `MET-A-015` | Steward status transitions | A-EP4 | S | Should | Ready | 4 |
| `MET-A-016` | Operator sends a dispatch instruction to selected stewards | A-EP5 | M | Should | Ready | 4 |
| `MET-A-017` | Steward acknowledges a received instruction | A-EP5 | S | Should | Ready | 4 |
| `MET-A-018` | Notification delivery decision and implementation for dispatch | A-EP5 | M | Should | Blocked | 4 |
| `MET-A-019` | Scenario suggestion from a free-text incident description | A-EP6 | L | Should | Needs refinement | 4 |
| `MET-A-020` | Evaluation set and measured accuracy for scenario suggestion | A-EP6 | M | Could | Blocked | 5 |
| `MET-A-021` | Response checklist for the active scenario | A-EP6 | M | Should | Needs refinement | 4 |
| `MET-A-022` | Dispatch message drafting from scenario templates | A-EP6 | S | Could | Needs refinement | - |
| `MET-A-023` | Append-only incident event log with actor and timestamp | A-EP7 | L | Must | Ready | 2 |
| `MET-A-024` | Incident timeline reconstruction | A-EP7 | M | Should | Ready | 5 |
| `MET-A-025` | Authentication and role-based interface routing | A-EP8 | M | Must | Ready | 2 |
| `MET-A-026` | Role and permission matrix enforced server-side | A-EP8 | S | Should | Ready | 3 |
| `MET-A-027` | Usability evaluation of the steward overview under time pressure | A-EP3 | M | Should | Ready | 5 |
| `MET-A-028` | Inheritance package for the 2027 cohort | A-EP10 | L | Must | Ready | 7 |

---

## A-EP1. Foundation and scenario domain model

### MET-A-001 · Derive the scenario domain model from the Metro alternative-operation presentations

`size:M` `prio:Must` `status:Ready` `track:cross-team` `type:spike` `sprint:1`

**As a team on this product, we want a documented entity model for emergency scenarios extracted from the two Metro presentations, so that every other item on this backlog has something concrete to build against.**

The source document states that no dataset exists and that the only assets are two presentations, one for M1M2 and one for M3M4. Nothing else in this backlog can be estimated honestly until the shape of a scenario is known. This is a timeboxed spike, not an implementation item, and its output is a document plus a schema proposal reviewed with the Metro domain expert.

**Acceptance criteria**

- [ ] The entity model names every concept a scenario contains, at minimum scenario identity, affected line, required stations, per-station role, and the sequence of steward actions.
- [ ] Each entity is traced to the slide or passage in the Metro material that evidences it, or is marked as an assumption to be confirmed.
- [ ] Variation between the M1M2 and M3M4 material is documented explicitly rather than averaged away.
- [ ] The model is reviewed with the Metro domain expert and the review outcome is recorded in the repository.
- [ ] The spike is closed after 5 team-days regardless of completeness, with open questions carried into A-002.

**Dependencies**

- Blocked until the two alternative-operation presentations are received from Metro Service.

**Open questions**

- *[Answered · Metro, August 2026]* The alternative-operation material, required before this item can start. **Received, and more than was asked for.** M1/M2 is documented scenario by scenario: five fallback scenarios named for the section they cover (VAN-FB, FOR-KN, KHC-ISB, KHC-LGP, KHC) and *Hold Alle Tog*, each in a control-room and a steward view, most with separate steward-task and steward-placement documents. M3/M4 came as one presentation, *ATD, Alternativ TogDrift v2.1*. A station list for both lines came with it. Three things to read off the material before modelling: a scenario is defined by a section of line rather than by an incident type; the same scenario is a different document per role, so role is a property of the view rather than a filter over one text; and steward placement and steward tasks are separate concerns in Metro's own material.
- *[Answered in part · Metro, August 2026]* How many scenarios exist per line? Six for M1/M2 in the material supplied, one general document for M3/M4. How often a scenario is activated in practice is still unanswered.

*Source: AAU-added. The source backlog contains no item for this work, which is the first work any team must do.*

### MET-A-002 · Scenario reference data schema, persistence and seed loader

`size:L` `prio:Must` `status:Blocked` `track:backend` `type:data` `sprint:2`

**As a developer on any team, I want scenarios held as structured reference data loaded from a versioned source, so that scenario content can be corrected without a code change.**

Follows A-001. The scenarios are reference data maintained by Metro operations, not application logic, and the design should reflect that from the start. Hard-coding the first scenario is the fastest way to make the second one expensive.

**Acceptance criteria**

- [ ] The relational schema holds scenarios, required stations, station roles and action sequences, with referential integrity enforced.
- [ ] A seed loader populates the database from a versioned file committed to the repository.
- [ ] Re-running the loader is idempotent and does not duplicate records.
- [ ] At least three real scenarios, agreed with the Metro expert, are present in the seed data.
- [ ] A scenario can be corrected by editing the source file and re-running the loader, with no code change.

**Dependencies**

- Requires A-001.
- Schema reviewed with the front-end team before implementation, since it constrains A-003.

**Open questions**

- *[Shaping · Metro]* Who in Metro operations owns scenario content, and how are scenarios corrected or added today?

*Source: AAU-added, implied by the absence of a dataset in the source material.*

### MET-A-003 · Scenario state contract published and versioned

`size:M` `prio:Must` `status:Ready` `track:cross-team` `type:contract` `sprint:1`

**As a developer on either surface, I want a published and versioned contract for scenario state, so that the mobile and web clients can be built in parallel without integrating on guesswork.**

The steward client and the control-room client share one notion of what the active scenario is. This is the interface between a front-end team and a back-end team and is the highest-value coordination artefact in the product. It is scheduled in the first sprint deliberately, before either team builds against it.

**Acceptance criteria**

- [ ] The contract covers scenario identity, version, activation state, required stations, per-steward assignment, and the shape of a position report.
- [ ] The contract is committed to a shared repository path and reviewed by both teams at the first integration meeting.
- [ ] A machine-readable schema is published alongside the prose, and both clients validate against it in their test suites.
- [ ] The contract carries a version number. A breaking change requires a new version and a changelog entry, and both teams adopt it within the same sprint.
- [ ] A stub server serving the contract is available to the client team before the real implementation exists.

**Dependencies**

- Blocks A-004, A-005, A-007 through A-014.
- Informed by A-001 but must not wait for it; the first version may carry placeholders marked as such.

*Source: AAU-added. No source story names a contract or a dependency.*

---

## A-EP2. Scenario selection and activation

### MET-A-007 · Operator selects and activates a scenario from the predefined list

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:2`

**As a Control Room Operator, I want to select the active emergency scenario from a predefined list, so that every steward immediately sees which alternative-operation plan is in effect.**

Source story A1.1, restated with testable criteria. The original criterion, that the scenario becomes active for all connected users, is an architectural requirement and has been moved to A-004.

**Acceptance criteria**

- [ ] The scenario list is loaded from reference data and is searchable when it exceeds one screen.
- [ ] Selecting a scenario requires a confirmation step before it becomes active, and the confirmation names the scenario.
- [ ] Once activated, the active scenario is visible in the control-room interface at all times without navigation.
- [ ] Only one scenario per line can be active at any moment, enforced server-side and covered by a test.
- [ ] Activation writes an event to the incident log carrying the actor and the timestamp.

**Dependencies**

- Requires A-002 and A-003.

**Open questions**

- *[Shaping · Metro]* Can two scenarios be active at the same time on the same line, for example a primary scenario and a local one at a single station? The source stories assume one.

*Source: A1.1*

### MET-A-008 · Required staffing for the active scenario shown to the operator

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:2`

**As a Control Room Operator, I want to see which stations must be staffed for the selected scenario, so that I can direct stewards to the right locations.**

Source story A1.2. Its criteria used the terms clearly marked and visually distinct, neither of which can fail a review. The indication rules are specified here and the coverage-gap rules are in A-012.

**Acceptance criteria**

- [ ] Every station the active scenario requires is listed with the role required at it.
- [ ] Required stations are shown in the geographic or line order used by Metro rather than alphabetically.
- [ ] Station state is conveyed by at least two channels, one of which is not colour, so that the display does not depend on colour perception.
- [ ] The count of required stations and the count currently covered are both visible without interaction.

**Dependencies**

- Requires A-002.

**Open questions**

- *[Shaping · Metro]* What roles exist at a station during alternative operation, and can one steward satisfy more than one role at once?

*Source: A1.2*

### MET-A-009 · Operator changes or stands down the active scenario

`size:S` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As a Control Room Operator, I want to change or stand down the current scenario, so that the field picture always reflects the current operational reality.**

Source story A1.3. Standing down is the state transition most likely to be left until last and it is the one that returns stewards to normal working.

**Acceptance criteria**

- [ ] Switching to a different scenario requires confirmation and names both the outgoing and the incoming scenario.
- [ ] Standing down returns all clients to a normal state in which no scenario is active.
- [ ] Both transitions write an event to the incident log with actor and timestamp.
- [ ] Stewards receive a visible change of state rather than having to notice that the content differs.

**Dependencies**

- Requires A-007.

*Source: A1.3*

---

## A-EP3. Shared situational overview

### MET-A-004 · Real-time propagation of scenario and position changes to connected clients

`size:L` `prio:Must` `status:Ready` `track:backend` `type:feature` `sprint:2`

**As a Control Room Operator, I want the overview to update as stewards report position without my having to refresh it, so that I always work from a current picture.**

Source stories A1.1 and A2.3 state this requirement in one clause each. Behind it sit decisions about transport, connection lifecycle, reconnection and message ordering, shared by both surfaces. It is an architectural item and is sized accordingly.

**Acceptance criteria**

- [ ] A scenario activated by an operator is reflected on a connected steward client within 3 seconds at the 95th percentile, measured on staging with 25 simulated clients connected.
- [ ] A steward position report is reflected on the control-room overview within 3 seconds at the 95th percentile under the same conditions.
- [ ] The measurement harness is committed and reproducible from a single command, and the reported figure states the sample size.
- [ ] Messages for a single steward are applied in the order they were generated, verified by a test that delivers them out of order.
- [ ] A client that loses its connection is detected within 30 seconds and shown as stale on the control-room overview rather than silently retaining its last state.
- [ ] Transport choice and its alternatives are recorded in an architecture decision record.

**Dependencies**

- Requires A-003.
- Blocks A-011 and A-013.

**Open questions**

- *[Shaping · Metro]* How many concurrent users would the control-room side have, and is the control room using a desktop or a wall display? A wall display and a desktop are different products.

*Source: A1.1, A2.3*

### MET-A-010 · Steward graphical scenario overview on the mobile client

`size:L` `prio:Must` `status:Needs refinement` `track:mobile` `type:feature` `sprint:3`

**As a Steward, I want a clear graphical overview of the active scenario on my phone, so that I no longer have to navigate a document that is hard to read during a stressful situation.**

Source story A2.1. Its criterion, that the required stations be identifiable within a few seconds, is a human-factors outcome rather than a system property. It cannot be asserted by the team that built the screen, so it has been moved to a measured test in A-028 and the system-level properties are specified here.

**Acceptance criteria**

- [ ] The overview presents the scenario graphically rather than as a document to be scrolled.
- [ ] The steward own assignment is distinguished from the rest of the scenario without interaction.
- [ ] The overview is legible on the device the stewards actually carry, at the default system font size and at the largest accessibility font size.
- [ ] The overview renders from the local copy, so it is subject to A-005.
- [ ] No horizontal scrolling is required at any supported font size.

**Dependencies**

- Requires A-003 and A-005.
- Design input needed from A-028.

**Open questions**

- *[Answered · Metro, August 2026]* Which device do stewards carry? **Samsung Galaxy A52 to A55, mostly A52 and A55, on Android 14 and 15.** A 6.5 inch mid-range phone held in one hand, outdoors, at night, by somebody who is also walking. Android 14 as the floor puts minSdk at API 34.
- *[Answered · Metro, August 2026]* The PDF stewards use on their phones today. **Received** with the August material. Worth an hour of the team's time in sprint 1 before designing the replacement.

*Source: A2.1*

### MET-A-011 · Control-room live coverage overview with steward positions

`size:L` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As a Control Room Operator, I want a live overview showing required staffing and current steward positions, so that I can see coverage at a glance.**

Source stories A2.2 and A2.3 combined at the presentation layer. The transport that makes it live is A-004.

**Acceptance criteria**

- [ ] Each steward last reported location is shown against their name, with the age of that report.
- [ ] A steward whose report is older than the staleness threshold is shown as stale rather than as present.
- [ ] The overview updates without manual refresh, verified against the timings in A-004.
- [ ] Required stations, covered stations and gaps are all visible on one screen for a full line without scrolling, at the resolution the control room uses.

**Dependencies**

- Requires A-004 and A-008.

**Open questions**

- *[Answered in part · Metro, August 2026]* How many stewards are on duty? **Up to 20 on a night shift.** Twenty positions against 46 stations is a scale at which every steward can be individually visible and legible at once, which rules out clustering work a display for sixty would have needed. How many stations one steward covers is still unanswered; Metro asked in return why it is relevant, and the answer worth giving is that it decides whether a steward's position is a point or a span, and therefore whether the operator reads coverage off the screen correctly.

*Source: A2.2, A2.3*

### MET-A-012 · Coverage gap rules and derived station state

`size:S` `prio:Should` `status:Needs refinement` `track:backend` `type:feature` `sprint:3`

**As a Control Room Operator, I want a required station with no steward to be identified as a gap, so that I can see what still needs staffing without working it out myself.**

The source document treats gap indication as a presentation concern inside A1.2 and A2.2. It is a derivation over reported state and belongs server-side so that both surfaces agree on what a gap is.

**Acceptance criteria**

- [ ] Station state is derived server-side as one of required-uncovered, en-route, covered, or not-required, and both clients render the same derived value.
- [ ] A station whose only steward report is stale is treated as uncovered rather than covered.
- [ ] The derivation rules are documented, and a change to them requires a change to one place only.

**Dependencies**

- Requires A-003.

**Open questions**

- *[Shaping · Metro]* If a steward reports en route to a station, does that station count as covered for the purpose of the operator overview? The source stories do not say.

*Source: A1.2, A2.2*

### MET-A-027 · Usability evaluation of the steward overview under time pressure

`size:M` `prio:Should` `status:Ready` `track:cross-team` `type:evaluation` `sprint:5`

**As a supervisor, I want the claim that a steward can find their assignment quickly tested with people rather than asserted by the team, so that the product requirement is evidenced.**

Source story A2.1 requires that required stations be identifiable within a few seconds. That is the right thing to want and it is not a system criterion. Converting it into a measured test preserves the intent, gives the team a real gate, and produces evaluation data that can be used in the project report and in research output under Section 8 of the collaboration framework.

**Acceptance criteria**

- [ ] A task-based protocol is written: participants are given a scenario and asked to state their required station.
- [ ] At least eight participants are tested, and the population is stated honestly including where students stood in for stewards.
- [ ] Time to correct answer and error rate are reported with the number of participants.
- [ ] At least two defects found by the test are entered as backlog items.
- [ ] The protocol and the raw timings are committed so the test can be repeated by the 2027 cohort.

**Dependencies**

- Requires A-010.

**Open questions**

- *[Shaping · Metro]* Could two or three stewards take part in a 30-minute session at the university or over Teams? Testing with students instead is possible but weaker, and we would report it as such.

*Source: AAU-added, derived from A2.1*

---

## A-EP4. Steward self-localization and status

### MET-A-013 · Steward sets current location with a single action

`size:M` `prio:Must` `status:Ready` `track:mobile` `type:feature` `sprint:3`

**As a Steward, I want to indicate my current location with a single tap, so that the control room knows where I am without a radio call.**

Source story A3.1. The station list a steward chooses from should be scoped to the active scenario, otherwise the single tap becomes a search through the whole network.

**Acceptance criteria**

- [ ] The stations offered are those relevant to the active scenario, ordered by proximity to the last reported position.
- [ ] Setting a location requires one action from the main screen, not a navigation sequence.
- [ ] The previous position is replaced rather than accumulated, and the replacement is visible to the steward.
- [ ] A report made with no connection is queued per A-006 and the steward is told it is queued rather than sent.

**Dependencies**

- Requires A-003.
- Interacts with A-006.

*Source: A3.1*

### MET-A-014 · Steward marks a required station as covered

`size:S` `prio:Should` `status:Ready` `track:mobile` `type:feature` `sprint:3`

**As a Steward, I want to mark a required station as covered, so that the control room can see staffing progress.**

Source story A3.2.

**Acceptance criteria**

- [ ] Marking a station covered changes its derived state per A-012 for all users.
- [ ] A steward can only mark a station covered if their reported position is that station, or the reason for allowing otherwise is documented.
- [ ] The action writes an event to the incident log with actor, station and timestamp.

**Dependencies**

- Requires A-012 and A-013.

**Open questions**

- *[Shaping · Metro]* May a steward mark a station covered while not physically at it, for example when covering two adjacent stations? The answer determines whether coverage is evidence or intent.

*Source: A3.2*

### MET-A-015 · Steward status transitions

`size:S` `prio:Should` `status:Ready` `track:mobile` `type:feature` `sprint:4`

**As a Steward, I want to update my status to en route, on site or task done, so that the control room can coordinate without calling me.**

Source story A3.3.

**Acceptance criteria**

- [ ] The permitted status values and the transitions between them are defined in the contract of A-003.
- [ ] The current status is shown against the steward name on the control-room overview.
- [ ] An invalid transition is rejected server-side with a message the client can display.

**Dependencies**

- Requires A-003 and A-011.

*Source: A3.3*

---

## A-EP5. Low-radio dispatch

### MET-A-016 · Operator sends a dispatch instruction to selected stewards

`size:M` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:4`

**As a Control Room Operator, I want to send a dispatch instruction to one or several stewards in the application, so that I reduce radio traffic in already pressured situations.**

Source story A4.1. The original criterion, that the instruction be clearly visible, is replaced by properties that can be tested.

**Acceptance criteria**

- [ ] An instruction can be addressed to one steward, to several, or to everyone assigned to the active scenario.
- [ ] A sent instruction is stored with sender, recipients, text and timestamp, and appears in the incident log.
- [ ] An instruction is delivered to a client that is offline at send time on its next reconnection, not discarded.
- [ ] The instruction remains available to the steward until acknowledged, and is not dismissed by navigation.

**Dependencies**

- Requires A-003 and A-006.

**Open questions**

- *[Shaping · Metro]* Is there an existing radio or briefing protocol that instructions should follow in form or vocabulary? Free text and a structured message are different products.

*Source: A4.1*

### MET-A-017 · Steward acknowledges a received instruction

`size:S` `prio:Should` `status:Ready` `track:mobile` `type:feature` `sprint:4`

**As a Steward, I want to acknowledge a received instruction, so that the control room knows it was received and understood.**

Source story A4.2.

**Acceptance criteria**

- [ ] Acknowledgement records the steward, the instruction and the timestamp.
- [ ] The control room sees an acknowledged state per recipient, and an unacknowledged instruction is distinguishable from an unsent one.
- [ ] Acknowledgement made offline is queued per A-006.

**Dependencies**

- Requires A-016.

*Source: A4.2*

### MET-A-018 · Notification delivery decision and implementation for dispatch

`size:M` `prio:Should` `status:Blocked` `track:mobile` `type:tech` `sprint:4`

**As a Steward, I want to be alerted when an instruction arrives even if the application is not in the foreground, so that I do not miss a dispatch while doing something else.**

The source document assumes instructions reach stewards but says nothing about how. On a managed device in a metro environment this is a substantive decision with a hardware and network dependency, and it is easy to discover in November that the chosen channel is not available.

**Acceptance criteria**

- [ ] The delivery channel is chosen, and the alternatives and the reason for the choice are recorded in an architecture decision record.
- [ ] An instruction sent while the application is in the background produces a visible alert on the device.
- [ ] Behaviour when the device has no connection at send time is specified and tested.
- [ ] Any dependency on a third-party service is named, together with what happens when it is unavailable.

**Dependencies**

- Requires A-016.
- Blocked on the device question in A-010.

**Open questions**

- *[Answered in part · Metro, August 2026]* The device is a consumer Samsung Galaxy A52 to A55 on Android 14 or 15, so Google Play services can be assumed present and Firebase Cloud Messaging is a reasonable default rather than a gamble. **Still blocking:** are the phones enrolled in a mobile device management system, and if so which one? That decides whether an app can be pushed to them at all, whether notification permissions can be granted centrally, and whether a managed configuration can be read at install time.

*Source: AAU-added.*

---

## A-EP6. Decision support: classification and checklists

### MET-A-019 · Scenario suggestion from a free-text incident description

`size:L` `prio:Should` `status:Needs refinement` `track:backend` `type:feature` `sprint:4`

**As a Control Room Operator, I want to describe an incident in my own words and be offered a ranked shortlist of candidate scenarios, so that I can activate the right plan faster.**

Source story A5.1, restated. The original specified an assistant returning a ranked shortlist, which any prompt satisfies and which no examiner can assess. Since no external model is supplied, the students implement the classifier themselves and measure it against A-020. The operator confirms before anything is activated, so the failure mode of a wrong suggestion is a wasted second rather than a wrong plan.

**Acceptance criteria**

- [ ] A deterministic method maps a free-text description to a ranked shortlist of at most five candidate scenarios.
- [ ] The method is exposed behind an interface that permits a second implementation to be swapped in without changing callers.
- [ ] A suggested scenario is never activated without the explicit confirmation required by A-007.
- [ ] When no candidate exceeds the agreed confidence threshold, the operator is told so and offered the full list instead of a poor ranking.
- [ ] The approach, its assumptions and its known failure modes are documented.

**Dependencies**

- Requires A-002 and A-007.
- Measured by A-020.

**Open questions**

- *[Answered · Metro, August 2026]* In which language do operators type? **Danish.** The scenario material supplied in August is Danish throughout. The consequences are concrete: multilingual sentence embeddings rather than English-only models; Danish compounding makes pure lexical matching weak, so a hybrid of lexical and dense retrieval is the safer design; station and line abbreviations must survive tokenisation; and any evaluation set has to be Danish, which makes A-020 the highest-value outstanding request in the case.

*Source: A5.1*

### MET-A-020 · Evaluation set and measured accuracy for scenario suggestion

`size:M` `prio:Could` `status:Blocked` `track:backend` `type:evaluation` `sprint:5`

**As a supervisor, I want the scenario suggestion measured against expert-labelled examples, so that a claim about it can be examined rather than demonstrated.**

Nothing in the source document asks for a measured result anywhere, which is why the AI stories as written are satisfied by a decorative implementation. This item is what makes the work assessable under the Machine Intelligence course and it is also what produces comparable data across teams.

**Acceptance criteria**

- [ ] An evaluation set of at least 40 incident descriptions, each with the scenario an expert considers correct, is committed as versioned test data.
- [ ] Top-one and top-three accuracy are computed over the set and reproducible from a single command.
- [ ] A trivial baseline, for example keyword overlap, is measured on the same set and reported alongside.
- [ ] The result is reported honestly at a sprint review, including when the baseline performs better.

**Dependencies**

- Requires A-019.
- Blocked on labelled examples from Metro.

**Open questions**

- *[Blocking · Metro]* Would the domain expert provide 40 to 60 short incident descriptions with the scenario each should trigger? This is the single most valuable artefact for the Machine Intelligence part of the semester and it does not exist today.

*Source: AAU-added.*

### MET-A-021 · Response checklist for the active scenario

`size:M` `prio:Should` `status:Needs refinement` `track:frontend` `type:feature` `sprint:4`

**As a Control Room Operator, I want the response checklist for the active scenario available to me, so that I do not miss steps under pressure.**

Source story A5.2. Whether checklists exist today as written artefacts determines whether this item is data entry or design.

**Acceptance criteria**

- [ ] The checklist for the active scenario is reachable in one action from the scenario view.
- [ ] Checklist items are reference data held with the scenario, not application code.
- [ ] Completing an item records the actor and the timestamp to the incident log.
- [ ] Progress through the checklist survives a page reload and an operator handover.

**Dependencies**

- Requires A-002 and A-024.

**Open questions**

- *[Blocking · Metro]* Do response checklists exist today, in the presentations or elsewhere, or would the students be designing them? This changes the item from data modelling to content design.

*Source: A5.2*

### MET-A-022 · Dispatch message drafting from scenario templates

`size:S` `prio:Could` `status:Needs refinement` `track:frontend` `type:feature`

**As a Control Room Operator, I want a draft dispatch message prepared from the active scenario that I can edit, so that I save time while remaining the author.**

Source story A5.3, restated as template composition rather than generation, since no model is supplied. The human-in-the-loop property of the original is preserved and strengthened: nothing is sent without explicit confirmation.

**Acceptance criteria**

- [ ] A draft is composed from the scenario and the selected recipients and is fully editable before sending.
- [ ] Nothing is sent without an explicit confirmation action distinct from requesting the draft.
- [ ] The sent text is stored as sent, not as the template, so the log reflects what stewards actually received.

**Dependencies**

- Requires A-016.

*Source: A5.3*

---

## A-EP7. Incident log and post-incident analysis

### MET-A-023 · Append-only incident event log with actor and timestamp

`size:L` `prio:Must` `status:Ready` `track:backend` `type:tech` `sprint:2`

**As an Operations Administrator, I want every scenario activation, staffing event and message recorded with a timestamp and an actor, so that the incident can be analysed afterwards.**

Source story A6.1, raised from Should to Must. Eight other items on this backlog write to this log, so it cannot be built late without those items being rewritten. Raising the priority is an AAU judgement and should be confirmed with Metro rather than assumed.

**Acceptance criteria**

- [ ] Every state-changing action in the product writes an event carrying type, actor, subject, payload and server timestamp.
- [ ] Events are append-only. There is no code path that updates or deletes one, verified by a test.
- [ ] Clock source is the server, and any client-supplied time is stored as a separate field rather than replacing it.
- [ ] The event schema is versioned and documented, and adding a new event type does not require a migration.
- [ ] Writing an event is on the same transaction boundary as the change it records, so the two cannot diverge.

**Dependencies**

- Blocks A-007, A-009, A-014, A-016, A-021, A-024.

**Open questions**

- *[Shaping · Metro]* Is the raised priority accepted? The alternative is that the log arrives late and several completed items have to be reopened to write to it.

*Source: A6.1, priority raised from Should to Must by AAU*

### MET-A-024 · Incident timeline reconstruction

`size:M` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:5`

**As an Operations Analyst, I want to open a past incident and follow the sequence of events, so that I can reconstruct what happened and when.**

The second half of source story A6.1. Reading the log is a separate deliverable from writing it, and it is the one that demonstrates the log was worth keeping.

**Acceptance criteria**

- [ ] A past incident can be selected by date and line and its events displayed in order.
- [ ] The timeline shows scenario changes, staffing events and messages on one axis.
- [ ] The view is exportable in a format that survives outside the system.
- [ ] An incident with no events displays as empty rather than as an error.

**Dependencies**

- Requires A-023.

**Open questions**

- *[Shaping · Metro]* Who reviews incidents afterwards, and what do they need to answer? The persona list names an Operations Analyst but no story describes their work.

*Source: A6.1*

---

## A-EP8. Access, roles and identity

### MET-A-025 · Authentication and role-based interface routing

`size:M` `prio:Must` `status:Ready` `track:backend` `type:feature` `sprint:2`

**As a user, I want to sign in and be given the interface and permissions for my role, so that I see what is relevant to my job and cannot act outside it.**

Source story A7.1. The story covers routing to the right interface. Enforcement of what each role may do is the separate concern in A-026.

**Acceptance criteria**

- [ ] A steward login lands on the steward interface and an operator login on the control-room interface.
- [ ] Role is resolved server-side. A client cannot obtain a different interface by changing a request.
- [ ] Session expiry behaviour is specified, and an expired session does not silently discard queued offline reports.
- [ ] Test accounts for every role are seeded and documented for the other teams to use.

**Dependencies**

- Blocks A-026.

**Open questions**

- *[Detail · Metro]* Is there an existing identity system whose role model the students should mirror, even without integrating with it?

*Source: A7.1*

### MET-A-026 · Role and permission matrix enforced server-side

`size:S` `prio:Should` `status:Ready` `track:backend` `type:compliance` `sprint:3`

**As an administrator, I want each role limited to its permitted actions, so that no user can perform an action outside their responsibility.**

Every case in the source document requires access control and none of them states what the roles actually are. Without the real roles this item will be built against invented ones and reworked later.

**Acceptance criteria**

- [ ] The permission matrix is documented as data, listing every action against every role.
- [ ] Enforcement is server-side and a denied action returns a refusal rather than a partial effect.
- [ ] Every entry in the matrix is covered by a test asserting both permission and refusal.

**Dependencies**

- Requires A-025.
- Blocked on the real role definitions from Metro.

**Open questions**

- *[Answered · Metro, August 2026]* What roles exist and who may do what? **"All in CCR can activate a scenario. DOM can approve a restriction. Operation administration can amend the catalogue."** Four actors to model: CCR (the control room, collectively) activates and stands down scenarios; DOM, the *vagthavende driftschef*, approves restrictions; Operation Administration amends the catalogue; the Steward reports position, acknowledges instructions and records patrols. Two things follow. Scenario activation is not individually restricted, which fits an emergency where hesitation costs more than a wrong activation, so the model should not invent an approval step operational practice does not have. And the separation that does exist is between acting and amending the catalogue. The Operations Analyst named in the source stories has no act attached to them and should be dropped rather than given invented permissions.

*Source: A7.1*

---

## A-EP9. Offline and degraded operation

### MET-A-005 · Active scenario and own assignment readable with no network

`size:L` `prio:Must` `status:Ready` `track:mobile` `type:feature` `sprint:3`

**As a Steward, I want the active scenario, my own assignment and the response checklist to stay readable when I have no signal, so that I am not worse off in a tunnel than I was with the document I used before.**

No story in the source document addresses loss of connectivity, and the words offline, connectivity, degraded, unavailable and timeout do not appear in it. Stewards work on platforms, in tunnels and on moving trains. The artefact this product replaces has the property of working without a connection, so a replacement that does not is a regression in exactly the circumstances the product exists for.

**Acceptance criteria**

- [ ] With the device in flight mode, opening the application displays the last synchronised scenario, the steward assignment and the response checklist.
- [ ] The time at which the local copy was last synchronised is displayed whenever the client is not connected.
- [ ] Content served from the local copy is distinguished from live content by a persistent visual indicator.
- [ ] A local copy older than the agreed staleness period displays its age prominently rather than presenting itself as current.
- [ ] The scenario content required offline is bounded and stated, so that the local store cannot grow without limit.

**Dependencies**

- Requires A-003.
- The staleness period requires confirmation from Metro.

**Open questions**

- *[Shaping · Metro]* After how long should a locally held scenario be treated as untrustworthy? A steward underground for 40 minutes is a normal case, so the answer is not obvious.

*Source: AAU-added. The most consequential gap in the source document.*

### MET-A-006 · Reconnection, reconciliation and exactly-once delivery of queued reports

`size:L` `prio:Should` `status:Ready` `track:mobile` `type:feature` `sprint:4`

**As a Steward, I want the reports I made while offline to reach the control room once and only once when I regain signal, so that my position is correct and the control room does not see duplicates.**

The consequence of A-005. Once the client can act offline, it accumulates state that must be reconciled. Getting this wrong produces duplicate patrol and position records, which is worse than losing them because it corrupts the picture the control room trusts.

**Acceptance criteria**

- [ ] Position and status reports made with no connection are queued locally and survive an application restart.
- [ ] On reconnection the client reconciles to the current server scenario within 5 seconds without user action.
- [ ] Each queued report is applied server-side exactly once, verified by a test that replays the same queue twice.
- [ ] If the scenario changed while the client was offline, queued reports against the superseded scenario are rejected and the steward is told why.
- [ ] Conflict resolution rules are recorded in an architecture decision record.

**Dependencies**

- Requires A-004 and A-005.

**Open questions**

- *[Detail · either]* If a steward reports a position against a scenario that has since been stood down, should that report be discarded, or retained for the incident log?

*Source: AAU-added.*

---

## A-EP10. Inheritance and handover

### MET-A-028 · Inheritance package for the 2027 cohort

`size:L` `prio:Must` `status:Ready` `track:cross-team` `type:tech` `sprint:7`

**As a member of the 2027 cohort, I want the system I inherit to be comprehensible without its authors, so that I can extend it rather than rewrite it.**

The semester is designed around inherited code and the 2026 cohort has none, so the compensating objective is that they produce something that can be inherited. This item makes that a graded deliverable rather than a hope, and it is defended at the oral examination.

**Acceptance criteria**

- [ ] Architecture decision records exist for every choice that would puzzle a newcomer, at minimum transport, offline strategy, and scenario data modelling.
- [ ] The scenario state contract is committed with its version history intact.
- [ ] Characterisation tests cover the behaviour of any module the team judges non-obvious, including the coverage derivation of A-012.
- [ ] A handover note states what works, what does not, what was cut and why, and the three things the next team should do first.
- [ ] A new developer can bring the system up from the repository following the README alone, verified by someone outside the team.

**Dependencies**

- Depends on the product being at a stable point; scheduled in the final sprint.

*Source: AAU-added.*

---
