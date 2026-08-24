# Case B. Manning/patrol requirement

*Manning og patruljering. Renamed by Metro Service in August 2026; previously "Steward Localization" (STW-lokalisering).*

A compliance-grade system documenting that stewards are present and active during night operation, against a contractual requirement of at least 70 percent of trains manned and every station patrolled at least once per hour, with a verifiable real-time and historical record.

| | |
|---|---|
| **AAU evaluation** | Recommended by the AAU evaluation, conditional on a written ethical-framing agreement. Metro has confirmed that an ethical guidelines document will follow after the summer vacation. |
| **Metro contact** | Ian Røpke (IAR@metroservice.dk); domain expert Karsten Juhl (KJU@metroservice.dk) |
| **Surfaces** | Android handheld for stewards, web dashboard for control room and operations, back-end analytics and reporting. |
| **Data readiness** | Station list for both lines received in August, stating for each station whether it has a platform level only or a platform and a concourse level: 46 stations, 76 patrol levels. Records are opened and closed by scanning a bar or QR code, at a station level and inside a train; BLE is corroborating context rather than evidence. Still outstanding: the list of trains on both lines. |

> This product runs on synthetic steward identities for the whole semester. No personal data is transferred to AAU, so no Data Processing Agreement sits on the critical path. The ethical and technical content of the case is unaffected.

## At a glance

**24 items.** Priority: 15 Must, 7 Should, 2 Could. Readiness: 16 ready, 5 needing refinement, 3 blocked on Metro input. Size: 3×S, 13×M, 8×L.

> **Updated 24 August 2026** against Metro Service's answers and the revised user stories. Five of the eight blocked items are released. What changed most: presence is now recorded by scanning a bar or QR code rather than inferred from a beacon (`MET-B-001`, `MET-B-004`), the seventy percent target is a proportion of running time rather than an instantaneous reading (`MET-B-011`), and the compliance report must be exported to Metro's Databricks lakehouse (`MET-B-013`).

**Minimum demonstrable product**, meaning the 9 Must items proposed for sprints 1 to 3: `MET-B-001`, `MET-B-002`, `MET-B-003`, `MET-B-004`, `MET-B-007`, `MET-B-008`, `MET-B-018`, `MET-B-020`, `MET-B-023`. This is the set to argue about at the August session. If it is wrong, everything after it is wrong too.

## Epics

| Epic | Name | Items |
|---|---|---|
| `B-EP1` | Foundation: positioning abstraction and station reference data | 3 |
| `B-EP2` | Presence and patrol capture | 3 |
| `B-EP3` | Station patrol coverage | 3 |
| `B-EP4` | Train manning coverage | 2 |
| `B-EP5` | Compliance dashboard and reporting | 2 |
| `B-EP6` | Coverage analytics and forecasting | 4 |
| `B-EP7` | Data protection, transparency and steward rights | 3 |
| `B-EP8` | Verifiable historical record | 2 |
| `B-EP9` | Access, roles and identity | 1 |
| `B-EP10` | Inheritance and handover | 1 |

## Backlog index

| ID | Title | Epic | Size | Priority | Readiness | Sprint |
|---|---|---|---|---|---|---|
| `MET-B-001` | Evidence rule decision: is presence asserted by the system or confirmed by the steward? | B-EP1 | S | Must | Ready | 1 |
| `MET-B-002` | Positioning interface with a simulator implementation | B-EP1 | M | Must | Ready | 1 |
| `MET-B-003` | Station reference dataset with concourse and platform areas | B-EP1 | M | Must | Needs refinement | 2 |
| `MET-B-004` | Presence and patrol record capture | B-EP2 | M | Must | Needs refinement | 2 |
| `MET-B-005` | Steward sees that their presence has been registered | B-EP2 | S | Should | Ready | 3 |
| `MET-B-006` | Duplicate and out-of-order observation handling | B-EP2 | S | Should | Ready | 2 |
| `MET-B-007` | Patrol completion rule and hourly coverage computation | B-EP3 | L | Must | Ready | 3 |
| `MET-B-008` | Overdue and at-risk station indication | B-EP3 | M | Must | Ready | 3 |
| `MET-B-009` | Steward view of stations due for patrol | B-EP3 | M | Should | Ready | 4 |
| `MET-B-010` | Train manning input behind an abstraction | B-EP4 | M | Must | Ready | 4 |
| `MET-B-011` | Manned-train percentage against the 70 percent target | B-EP4 | M | Must | Ready | 4 |
| `MET-B-012` | Real-time shift compliance dashboard | B-EP5 | L | Must | Ready | 4 |
| `MET-B-013` | Exportable per-night compliance report with traceable records | B-EP5 | L | Must | Needs refinement | 5 |
| `MET-B-014` | Coverage gap detection during the shift | B-EP6 | M | Should | Ready | 5 |
| `MET-B-015` | End-of-shift compliance forecast from partial-shift data | B-EP6 | L | Could | Needs refinement | - |
| `MET-B-016` | Forecast evaluation against held-out shifts | B-EP6 | M | Could | Needs refinement | - |
| `MET-B-017` | Shift audit summary generated from the record | B-EP6 | M | Should | Ready | 5 |
| `MET-B-018` | Steward transparency view | B-EP7 | M | Must | Ready | 3 |
| `MET-B-019` | Retention expiry and anonymisation enforced by the system | B-EP7 | L | Should | Blocked | 4 |
| `MET-B-020` | Append-only event store for presence and patrol records | B-EP8 | L | Must | Ready | 2 |
| `MET-B-021` | Tamper-evident record and point-in-time reconstruction | B-EP8 | L | Should | Ready | 5 |
| `MET-B-022` | Data-protection statement as a project deliverable | B-EP7 | M | Must | Blocked | 6 |
| `MET-B-023` | Roles, access control and synthetic identity fixtures | B-EP9 | M | Must | Blocked | 3 |
| `MET-B-024` | Inheritance package for the 2027 cohort | B-EP10 | L | Must | Ready | 7 |

---

## B-EP1. Foundation: positioning abstraction and station reference data

### MET-B-001 · Evidence rule decision: is presence asserted by the system or confirmed by the steward?

`size:S` `prio:Must` `status:Ready` `track:cross-team` `type:spike` `sprint:1`

**As a team on this product, we want a recorded decision on what constitutes evidence of presence, so that every downstream item means the same thing by a patrol record.**

Source story B1.1 asks for both designs at once. Its title specifies automatic registration via beacons; its first acceptance criterion specifies creating a record with a single tap. These are different products with different evidence value, different failure modes and a different feel for the person being recorded. Everything in epics B3, B4 and B8 depends on the answer, so it is taken first and recorded as an architecture decision record.

**Acceptance criteria**

- [ ] The decision is recorded as an architecture decision record naming the option chosen, the options rejected and the reason.
- [ ] The consequence for the compliance report is stated explicitly: what the report is entitled to assert under the chosen rule.
- [ ] The consequence for the steward is stated: what they must do, and what happens if they do not.
- [ ] The decision is confirmed by the Metro domain expert before B-004 begins.

**Dependencies**

- Blocks B-004, B-005, B-007, B-014.

**Open questions**

- *[Answered · Metro, August 2026]* Is a patrol record created automatically, or does the steward confirm it? **"The steward confirms it or starts/stops the record."** The revised story B1.1 specifies the mechanism: the steward presses Start/Fortsæt and scans a bar or QR code to open a record, and Stop plus a scan to close it, on a station level and inside a train. The evidence rule to record in the ADR is therefore that a record is created by a scanned, timestamped act of the steward, with a beacon reading as corroborating context rather than evidence.

*Source: B1.1, decomposed*

### MET-B-002 · Positioning interface with a simulator implementation

`size:M` `prio:Must` `status:Ready` `track:backend` `type:tech` `sprint:1`

**As a developer on this product, I want station presence captured through a single positioning interface with a simulator behind it, so that coverage, dashboard and reporting can all be built and tested before any team touches a physical beacon.**

Source story B1.1 bundles beacon detection, station identification and registration into one item, and behind it sit an indoor positioning subsystem, a reference dataset and unresolved logistics. Deferring the hardware behind an interface removes station access, device availability and safety induction from the critical path of everything downstream. The source backlog already proposes this pattern for train beacons in B3.2; this extends it to stations.

**Acceptance criteria**

- [ ] The interface exposes one operation returning observed station identity, a confidence value and an observation timestamp.
- [ ] A simulator replays a scripted shift from a versioned fixture file.
- [ ] The fixture includes at least one gap exceeding the hourly patrol requirement and at least one ambiguous observation matching two adjacent stations.
- [ ] Every downstream component is built against the interface and passes its tests using the simulator alone, with no reference to BLE anywhere in them.
- [ ] The interface is published in the shared contract repository and reviewed by the mobile team before implementation.

**Dependencies**

- Blocks B-004, B-007, B-012, B-014.

*Source: B1.1, decomposed. Pattern taken from B3.2.*

### MET-B-003 · Station reference dataset with concourse and platform areas

`size:M` `prio:Must` `status:Needs refinement` `track:backend` `type:data` `sprint:2`

**As a developer on this product, I want every station in scope modelled with its separate patrol areas, so that coverage can be computed for concourse and platform independently as the requirement demands.**

Source story B2.1 requires that concourse and platform both be accounted for, which means they are distinct entities and not attributes of a station. The dataset is loaded from data rather than compiled in, because the network changes.

**Acceptance criteria**

- [ ] Each station maps to its identifier, its line, and its distinct patrol areas.
- [ ] The dataset is loaded from a versioned file and reloading is idempotent.
- [ ] Stations serving two lines are modelled once and referenced twice rather than duplicated.
- [ ] A station added to the file appears in the system without a code change.

**Dependencies**

- Blocked on the station layout data from Metro.
- Requires B-002.

**Open questions**

- *[Answered · Metro, August 2026]* The station layout data is required before this item can start. **Received**: a per-line list stating for each station whether it has a platform level only or a platform and a concourse level. M1/M2 has 22 stations of which 7 have a concourse, M3/M4 has 24 stations of which 23 do: 46 stations and 76 patrol levels in total. Each station carries a short code (VAN, KGN, CPH) which is the natural primary key. The beacon-to-station mapping was answered "not relevant", which follows from the move to bar and QR codes; what the dataset needs instead is a code identifier per level and per train.
- *[Shaping · Metro]* How long does a full patrol round take in practice? The station and level counts are now known; the round duration is not, and it is what decides whether the hourly requirement is comfortable or tight.
- *[Shaping · Metro]* The list of trains on both lines, which the revised user stories name as required data for the case. A synthetic fleet of the right order of magnitude lets the work proceed, so this shapes the fixture rather than stopping the item.

*Source: B2.1*

---

## B-EP2. Presence and patrol capture

### MET-B-004 · Presence and patrol record capture

`size:M` `prio:Must` `status:Needs refinement` `track:backend` `type:feature` `sprint:2`

**As a Steward, I want my presence at a station recorded, so that the work I do is documented without a radio call or a paper form.**

Source story B1.1, revised by Metro Service in August 2026, which now specifies the capture mechanism in detail. A record is opened and closed by a scan, not inferred from a detection. Written against the interface of B-002 so that it is testable without hardware.

**Acceptance criteria**

- [ ] Start/Fortsæt followed by a scan of a code on a station level opens a patrol record for that level; Stop followed by a scan of a second code on the same level closes it.
- [ ] Start/Fortsæt followed by a scan of the code in a train opens a manning record; a further scan of the same code confirms continued presence; Stop followed by a scan closes it.
- [ ] A mandatory re-scan interval is enforced on trains, with the interval held as configuration rather than as a literal in the code.
- [ ] Stop without a scan closes an open train record, and the recorded time ends three minutes after the last valid scan rather than at the moment Stop was pressed.
- [ ] An open record is a representable state rather than an error, and the treatment of a record left open past the end of a shift is documented.
- [ ] Records are written through the append-only store of B-020.

**Dependencies**

- Requires B-001, B-002, B-003.

**Open questions**

- *[Shaping · Metro]* What is the mandatory re-scan interval on a train? The revised story leaves it as *x* minutes. Held as configuration, the item can be built and demonstrated before the value is fixed.
- *[Shaping · Metro]* Does a missed re-scan end the manning record at the last valid scan, or continue it and flag the gap? The two produce different compliance figures for the same night.

*Source: B1.1, revised August 2026*

### MET-B-005 · Steward sees that their presence has been registered

`size:S` `prio:Should` `status:Ready` `track:mobile` `type:feature` `sprint:3`

**As a Steward, I want to see that my presence has been registered, so that I trust the system is documenting my work.**

Source story B1.2. This is the item that most directly carries the ethical framing Metro attached to the case: the system exists to evidence work already done, and a steward who cannot see their own record has no reason to believe that.

**Acceptance criteria**

- [ ] The steward sees a confirmation naming the station and the time recorded.
- [ ] The steward can review their own records for the current shift without requesting them from anyone.
- [ ] A record that failed to reach the server is shown as pending rather than as recorded.

**Dependencies**

- Requires B-004.

*Source: B1.2*

### MET-B-006 · Duplicate and out-of-order observation handling

`size:S` `prio:Should` `status:Ready` `track:backend` `type:tech` `sprint:2`

**As an Operations Administrator, I want repeated or delayed observations not to distort the record, so that the compliance figures reflect what happened.**

A handheld that reconnects after a period underground will deliver observations late and sometimes twice. Without this item the compliance percentages are quietly wrong, which is the worst failure mode for a system whose purpose is evidence.

**Acceptance criteria**

- [ ] A duplicate observation does not create a second patrol record, demonstrated by a test over the fixture of B-002.
- [ ] An observation arriving out of order is placed by its observation timestamp rather than its arrival time.
- [ ] An observation arriving after the shift it belongs to has been reported is handled by a stated rule rather than silently accepted.

**Dependencies**

- Requires B-002 and B-004.

**Open questions**

- *[Shaping · Metro]* If an observation arrives after the compliance report for that night has been produced, should the report be reissued or should the late record be excluded? This is a governance question rather than a technical one.

*Source: AAU-added.*

---

## B-EP3. Station patrol coverage

### MET-B-007 · Patrol completion rule and hourly coverage computation

`size:L` `prio:Must` `status:Ready` `track:backend` `type:feature` `sprint:3`

**As a Control Room Operator, I want to know whether each station has been patrolled within the last hour across both concourse and platform, so that I can confirm the hourly requirement is met.**

Source story B2.1. The hard part is not the query but the definition: what makes a patrol complete, whether the hour is a rolling window or a clock hour, and whether concourse and platform must be covered by the same steward on the same pass.

**Acceptance criteria**

- [ ] The patrol completion rule is documented before implementation, covering the window definition and the treatment of separate areas.
- [ ] A station with no qualifying patrol within the window is computed as overdue.
- [ ] Concourse and platform coverage are computed independently and both are visible.
- [ ] The computation is covered by tests over the fixture of B-002, including the deliberate gap.
- [ ] Recomputing the same period twice produces the same result, verified by a test.

**Dependencies**

- Requires B-002, B-003, B-004.

**Open questions**

- *[Answered · Metro, August 2026]* Rolling or clock hour? **Rolling sixty minutes.**
- *[Answered · Metro, August 2026]* Same pass by the same steward? **Any coverage of each within the window satisfies the requirement.** The two levels are therefore computed independently, as the acceptance criteria already assume.

*Source: B2.1*

### MET-B-008 · Overdue and at-risk station indication

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As a Control Room Operator, I want stations approaching or past their patrol deadline distinguished from those that are compliant, so that I can act before a target is missed rather than after.**

Source stories B2.1 and B4.1 both ask for a flag without saying what triggers it. Acting before a miss requires a warning threshold, which the source document does not define.

**Acceptance criteria**

- [ ] Three states are computed and displayed: compliant, at risk, and overdue.
- [ ] The at-risk threshold is configurable and its default is documented with the reason for the default.
- [ ] State is conveyed by at least two channels, one of which is not colour.
- [ ] The count of overdue stations is visible without interaction.

**Dependencies**

- Requires B-007.

**Open questions**

- *[Shaping · Metro]* How long before a station falls out of compliance should it be flagged as at risk? Ten minutes and thirty minutes imply different working practices.

*Source: B2.1, B4.1*

### MET-B-009 · Steward view of stations due for patrol

`size:M` `prio:Should` `status:Ready` `track:mobile` `type:feature` `sprint:4`

**As a Steward, I want to see which stations on my line are due for patrol, so that I can prioritise my round.**

Source story B2.2. This is the item that makes the system useful to the steward rather than only to management, and it is therefore the strongest expression of the framing Metro asked for.

**Acceptance criteria**

- [ ] Stations approaching or past their deadline are listed in priority order for the steward line.
- [ ] The list reflects patrols completed by other stewards, so two stewards do not duplicate a round.
- [ ] The list is usable with no connection, showing its last update time.

**Dependencies**

- Requires B-007.

**Open questions**

- *[Answered · Metro, August 2026]* How many stewards work a night shift? **Up to 20.** With 76 patrol levels across the two lines, the view is a coordination surface for a team rather than a personal task list, and it should show that a level is already being patrolled rather than only that it is due.

*Source: B2.2*

---

## B-EP4. Train manning coverage

### MET-B-010 · Train manning input behind an abstraction

`size:M` `prio:Must` `status:Ready` `track:backend` `type:tech` `sprint:4`

**As a developer on this product, I want train manning supplied through an abstracted interface with a simulated or manually entered implementation, so that the design is ready for train hardware while that hardware is still under consideration.**

Source story B3.2, raised from Won't to Should. As a Won't it removes the interface as well as the hardware, which leaves B3.1 with no input and makes the manning half of the compliance requirement undeliverable. Raised to Should as an interface only, it costs little and keeps the case whole.

**Acceptance criteria**

- [ ] A manning source interface returns, for a given time, the set of running trains and which are manned.
- [ ] A manual or simulated implementation exists and is seeded from a fixture.
- [ ] No downstream component references beacons or any specific manning technology.

**Dependencies**

- Blocks B-011.

**Open questions**

- *[Answered · Metro, August 2026]* Is the raised priority accepted? **Yes.** Metro raised source story B3.1 from Should to Must in the revised document. Train manning also no longer waits on hardware: a steward opens and closes a manning record by scanning a printed code inside the train, so train beacons (B-024) become one implementation behind this interface rather than the precondition for the feature.
- *[Shaping · Metro]* How many trains run at night per line, and where does the list of running trains come from today? The abstraction can be built and demonstrated against a synthetic fleet, so this shapes the fixture rather than stopping the item.

*Source: B3.2, priority raised from Won't to Should by AAU*

### MET-B-011 · Manned-train percentage against the 70 percent target

`size:M` `prio:Must` `status:Ready` `track:backend` `type:feature` `sprint:4`

**As a Control Room Operator, I want to see what proportion of the running time of the trains has been manned, so that I can confirm the requirement of at least 70 percent is met.**

Source story B3.1, revised by Metro Service in August 2026. The arithmetic is trivial; the definitions are not. Metro has now fixed the measure as time-weighted across the shift, which leaves the definition of a running train as the remaining judgement.

**Acceptance criteria**

- [ ] The percentage is computed as manned minutes divided by minutes in service, summed across trains over the shift to date, and displayed against the target.
- [ ] An instantaneous reading is available beside the shift figure, and the two are distinguishable at a glance, since the operator needs to know both what is happening now and where the shift stands.
- [ ] The denominator definition, meaning what counts as a train in service, is documented and visible to the user on request.
- [ ] A percentage below target is distinguished from one at or above it by more than colour.
- [ ] The computation is covered by tests including the boundary case at exactly 70 percent.

**Dependencies**

- Requires B-010.

**Open questions**

- *[Answered · Metro, August 2026]* How is the target measured? **"The trains are manned 70 percent of the time at a night shift."** The revised story says the same in the operator's words: the proportion of the running time of the trains that has been manned. The measure is time-weighted, not instantaneous, so a gap early in the night cannot be undone late.

*Source: B3.1*

---

## B-EP5. Compliance dashboard and reporting

### MET-B-012 · Real-time shift compliance dashboard

`size:L` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:4`

**As a Control Room Operator, I want a live compliance dashboard for the current shift, so that I can redeploy stewards before a target is missed.**

Source story B4.1. The dashboard is the product as far as the control room is concerned, and it is the artefact Metro will judge at a sprint review.

**Acceptance criteria**

- [ ] Live patrol coverage and train manning are both visible on one screen for a full line.
- [ ] The display updates without manual refresh and states the age of its data.
- [ ] At-risk and overdue metrics are surfaced without the operator having to look for them.
- [ ] The dashboard is legible at the resolution the control room actually uses.
- [ ] The dashboard remains usable when the manning source of B-010 returns nothing, degrading rather than failing.

**Dependencies**

- Requires B-007, B-008, B-011.

**Open questions**

- *[Shaping · Metro]* What screen does the control room use for this, and would the dashboard be displayed continuously or opened when needed?

*Source: B4.1*

### MET-B-013 · Exportable per-night compliance report with traceable records

`size:L` `prio:Must` `status:Needs refinement` `track:backend` `type:compliance` `sprint:5`

**As an Operations Administrator, I want to export a verifiable compliance report for a given night, so that we can evidence the required level of supervision to the contracting authority.**

Source story B4.2, which arrives in the source document wrapped in parentheses and followed by an unresolved editorial note. This is the item that gives the whole product its purpose, since the contractual obligation is to document, not merely to know.

**Acceptance criteria**

- [ ] The report covers per-station patrol coverage and train manning figures with timestamps for a selected night.
- [ ] Every figure in the report can be traced to the underlying records that produced it.
- [ ] The report states the rules used to compute it, including the window definition from B-007.
- [ ] Regenerating the report for the same night produces an identical document.
- [ ] The export format is one that survives outside the system and is readable without it.
- [ ] A machine-readable export shaped for a Gold-layer table accompanies the human-readable report, with the assumed table shape and field names written down.

**Dependencies**

- Requires B-007, B-011, B-020.

**Open questions**

- *[Answered · Metro, August 2026]* An example of the report as produced today, and the specification the contracting authority requires. **Answered "not relevant".** No existing report is being replaced, so the team designs the artefact rather than reproducing one, which raises rather than lowers the burden of justifying its shape.
- *[Answered · Metro, August 2026]* Is B4.2 in scope, and what does the DATA-BRICKS note mean? The revised story resolves it into a requirement: **"Data must be exported to DATA-BRICKS."** The item is in scope and the export is part of it. Students deploy nothing into Metro's tenant and hold no credentials for it, so what they build is an export in the agreed shape demonstrated on university infrastructure. Take the thirty minutes with whoever leads the data platform before implementing this.

*Source: B4.2*

---

## B-EP6. Coverage analytics and forecasting

### MET-B-014 · Coverage gap detection during the shift

`size:M` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:5`

**As a Control Room Operator, I want emerging coverage gaps surfaced as they form, so that I can redeploy stewards in time.**

Source story B5.1, restated. The original assigned this to an assistant; with no external model supplied, it is a rule over live coverage state, which is both simpler and more reliable than the original framing implied.

**Acceptance criteria**

- [ ] A gap that has formed or is imminent is surfaced with the affected stations named.
- [ ] The rule that defines imminent is documented and configurable.
- [ ] A gap that has been addressed disappears from the list without operator action.
- [ ] The number of alerts produced over a simulated shift is measured, so that the design can be judged against alert fatigue rather than assumed to be helpful.

**Dependencies**

- Requires B-007 and B-008.

*Source: B5.1*

### MET-B-015 · End-of-shift compliance forecast from partial-shift data

`size:L` `prio:Could` `status:Needs refinement` `track:backend` `type:feature`

**As a Control Room Operator, I want an estimate of the risk of missing each target by the end of the shift, so that I can intervene rather than react.**

Source story B5.2, restated. This is the strongest Machine Intelligence content in the case: predicting a shift outcome from a partial trajectory is a modelling problem the students build and measure, not an interface they call. It is a Could because the product is complete without it and it needs historical or simulated data to be worth anything.

**Acceptance criteria**

- [ ] A forecast of the risk of missing each target by shift end is produced from the shift so far.
- [ ] The forecast states the basis of its estimate, not only the number.
- [ ] The method and its assumptions are documented, including what it cannot account for.
- [ ] The forecast is measured by B-016 rather than asserted.

**Dependencies**

- Requires B-007 and B-011.
- Measured by B-016.

**Open questions**

- *[Shaping · Metro]* Does any historical record of night-shift coverage exist in any form, even informal? Without it the forecast can only be trained and tested on simulated shifts, which we would state as a limitation.

*Source: B5.2*

### MET-B-016 · Forecast evaluation against held-out shifts

`size:M` `prio:Could` `status:Needs refinement` `track:backend` `type:evaluation`

**As a supervisor, I want the forecast measured against shifts it has not seen, so that its accuracy is evidenced rather than claimed.**

The source document asks for a forecast with reasoning, which any generated text satisfies. This item is what makes the forecast assessable.

**Acceptance criteria**

- [ ] A set of shifts is held out and never used to develop the method.
- [ ] Forecast accuracy is reported at defined points through the shift, for example at a third and at two thirds elapsed.
- [ ] A trivial baseline, for example extrapolating the current rate linearly, is reported alongside.
- [ ] The evaluation runs from a single command and the result is reported honestly, including when the baseline wins.

**Dependencies**

- Requires B-015.

*Source: AAU-added.*

### MET-B-017 · Shift audit summary generated from the record

`size:M` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:5`

**As an Operations Administrator, I want a draft summary of the completed shift that I can review and adjust, so that reporting takes minutes rather than hours.**

Source story B5.3, restated as composition from the record rather than generation. Everything in the summary is derived from stored events, so the summary cannot assert anything the record does not support.

**Acceptance criteria**

- [ ] The summary is composed from the shift record and every statement in it traces to stored events.
- [ ] The summary is editable before it is finalised, and the edited version is stored separately from the generated one.
- [ ] A finalised summary carries the identity of the person who finalised it and the time.

**Dependencies**

- Requires B-013.

*Source: B5.3*

---

## B-EP7. Data protection, transparency and steward rights

### MET-B-018 · Steward transparency view

`size:M` `prio:Must` `status:Ready` `track:mobile` `type:compliance` `sprint:3`

**As a Steward, I want to see exactly what data is recorded about me and for how long it is kept, so that I can understand my position and trust the system.**

Source story B6.1. Together with B-005 this is where the ethical condition Metro attached to the case becomes something a steward can verify rather than something a document asserts.

**Acceptance criteria**

- [ ] The view lists every category of data stored about the steward, in plain language rather than field names.
- [ ] The retention period for each category is stated.
- [ ] The steward can see who is able to access each category.
- [ ] The view is reachable from the main screen without a search.

**Dependencies**

- Requires B-019.

**Open questions**

- *[Shaping · Metro]* The ethical guidelines document Metro will provide after the summer vacation should inform this item. If it arrives after the August backlog session, the students will design against our best reading and revise. Is a draft or an outline available earlier?

*Source: B6.1*

### MET-B-019 · Retention expiry and anonymisation enforced by the system

`size:L` `prio:Should` `status:Blocked` `track:backend` `type:compliance` `sprint:4`

**As an Operations Administrator, I want retention rules enforced automatically, so that compliance does not depend on someone remembering to delete records.**

Source story B6.2 bundles a data lifecycle subsystem and an authorisation model into one item. The lifecycle half is here and the access half is B-021. Retention periods cannot be invented by the students.

**Acceptance criteria**

- [ ] Each data category carries a retention period held as configuration rather than in code.
- [ ] Records past their retention period are removed or anonymised by an automatic process, verified by a test that advances the clock.
- [ ] Anonymisation is irreversible and the test demonstrates that the original identity cannot be recovered from what remains.
- [ ] Aggregate compliance figures survive anonymisation of the underlying personal records.
- [ ] Every expiry action writes an event to the audit record of B-020.

**Dependencies**

- Requires B-020.
- Blocked on retention periods from Metro.

**Open questions**

- *[Blocking · Metro]* What retention period applies to steward presence records? The five-year figure in Case C is for a different obligation and should not be assumed here.

*Source: B6.2*

### MET-B-022 · Data-protection statement as a project deliverable

`size:M` `prio:Must` `status:Blocked` `track:cross-team` `type:compliance` `sprint:6`

**As an Operations Administrator, I want a statement covering what is logged, for how long, who has access and what rights stewards hold, so that the system is auditable and the project meets its required deliverable.**

Source story B6.3. The statement is a student deliverable and a genuine piece of the work. It is not the legal instrument between AAU and Metro Service, and the distinction should be stated in the document itself so that nobody mistakes one for the other.

**Acceptance criteria**

- [ ] The statement covers logged categories, retention, access, and the rights stewards hold.
- [ ] Every claim in it corresponds to behaviour implemented in B-018, B-019 and B-021, with the item referenced.
- [ ] The statement records that the semester ran on synthetic identities and states what would change with real data.
- [ ] The statement is reviewed by the Metro contact before the final report.

**Dependencies**

- Requires B-018, B-019, B-021.
- Should follow the ethical guidelines document from Metro.

**Open questions**

- *[Blocking · Metro]* The ethical guidelines document is expected after the summer vacation. If it can reach us before the end of August it shapes this item and B-018; if later, the students proceed on our reading and revise once it arrives.

*Source: B6.3*

---

## B-EP8. Verifiable historical record

### MET-B-020 · Append-only event store for presence and patrol records

`size:L` `prio:Must` `status:Ready` `track:backend` `type:tech` `sprint:2`

**As an Operations Administrator, I want the underlying record to be append-only, so that the compliance evidence cannot be quietly altered.**

Half of source story B7.1, brought forward. Tamper evidence cannot be added to a mutable store afterwards without rebuilding everything above it, so the storage decision is taken in the second sprint rather than the fifth.

**Acceptance criteria**

- [ ] Presence, patrol and manning records are written append-only, with no code path that updates or deletes one.
- [ ] Corrections are expressed as compensating events rather than as edits, and the original remains visible.
- [ ] The event schema is versioned and documented.
- [ ] Every write carries actor, server timestamp and source.

**Dependencies**

- Blocks B-004, B-013, B-019, B-021.

*Source: B7.1, decomposed and brought forward*

### MET-B-021 · Tamper-evident record and point-in-time reconstruction

`size:L` `prio:Should` `status:Ready` `track:backend` `type:tech` `sprint:5`

**As an Operations Administrator, I want past compliance to be verifiable with confidence, so that a historical claim can be defended.**

The remainder of source story B7.1. The source criterion, that any modification be detectable, is a cryptographic property rather than a wish, and stating it that way is what stops a team from satisfying it with a comment.

**Acceptance criteria**

- [ ] Events are chained such that altering or removing any one is detectable by verifying the chain.
- [ ] A verification command reports the first point at which the chain fails, and a test that tampers with a record proves it does.
- [ ] The compliance picture for any past date can be reproduced from the record alone.
- [ ] The limits of the scheme are documented honestly, including what it does not protect against.

**Dependencies**

- Requires B-020.

*Source: B7.1*

---

## B-EP9. Access, roles and identity

### MET-B-023 · Roles, access control and synthetic identity fixtures

`size:M` `prio:Must` `status:Blocked` `track:backend` `type:feature` `sprint:3`

**As an administrator, I want access to presence data limited by role, so that a record of a person is seen only by those with a reason to see it.**

The access half of source story B6.2, combined with the identity fixtures the synthetic-data decision requires. Access control on this product is not a generic concern: who may see an individual steward record, as opposed to an aggregate, is the operative question in the ethical framing.

**Acceptance criteria**

- [ ] The permission matrix distinguishes access to individual records from access to aggregates, and is documented as data.
- [ ] A role permitted to see aggregates cannot reach an individual record by any route, verified by a test.
- [ ] Every access to an individual record is written to the audit record of B-020.
- [ ] A synthetic steward population is seeded from a fixture, with names that could not be mistaken for real staff.

**Dependencies**

- Requires B-020.
- Blocked on the role definitions from Metro.

**Open questions**

- *[Blocking · Metro]* Who is entitled to see an individual steward record as opposed to aggregate coverage? This is the question the ethical framing turns on, and the source stories name Steward, Control Room Operator and Operations Administrator without defining their access.

*Source: B6.2*

---

## B-EP10. Inheritance and handover

### MET-B-024 · Inheritance package for the 2027 cohort

`size:L` `prio:Must` `status:Ready` `track:cross-team` `type:tech` `sprint:7`

**As a member of the 2027 cohort, I want the system I inherit to be comprehensible without its authors, so that I can extend it rather than rewrite it.**

As for the other products, with one addition specific to this case: the evidence rule of B-001 and the retention decisions of B-019 are the choices a future team is most likely to misread, so they must be recorded rather than inferred.

**Acceptance criteria**

- [ ] Architecture decision records exist for the evidence rule, the storage model, the tamper-evidence scheme and the retention design.
- [ ] The positioning interface is committed with its version history and a working simulator.
- [ ] Characterisation tests cover the coverage computation of B-007 before any future team alters it.
- [ ] A handover note states what works, what does not, what was cut and why, and what the next team should do first.
- [ ] The step from synthetic to real identities is documented, including everything that would have to be true first.

*Source: AAU-added.*

---
