# Under-specified items and open questions

Generated from the same dataset as the backlogs, so it cannot drift from them.

**72 open questions across 63 items. Twenty were answered by Metro Service in August 2026** and are kept below, marked *Answered*, with the answer attached. Twenty-six items remain blocked, meaning the item cannot be completed without an answer.

The fifteen questions we put to Metro in the July note were answered in full or in part, together with the material several items were waiting for: the alternative-operation scenarios for both lines, the written Operational Restriction procedure and its forms, the station list, and an abbreviation glossary. Case D was answered with the observation that it is the case Metro does not prioritise, so its questions stand as they were.

## Case A. Emergency Scenarios

3 of 28 items are blocked. 23 open questions, 8 of them answered in August.

| Item | Impact | Owner | Question |
|---|---|---|---|
| `MET-A-001` | Answered | Metro | The two alternative-operation presentations, one per line, are required before this item can start. Nothing else in Case A can be refined without them. **Answered:** Received, and more than was asked for. M1/M2 came as six named scenarios, each in a control-room and a steward view; M3/M4 as one ATD presentation. A station list came with them. |
| `MET-A-010` | Answered | Metro | What device do stewards actually carry, by make, model and Android version? The use-case material mentions Samsung phones and Case B mentions a PDA, and it is not clear whether these are the same device. **Answered:** Samsung Galaxy A52 to A55, mostly A52 and A55, on Android 14 and 15. |
| `MET-A-011` | Answered in part | Metro | How many stewards are on duty during an incident, and how many stations does one steward typically cover? A display for six stewards and a display for sixty are different designs. **Answered in part:** Up to 20 stewards on a night shift. How many stations one steward covers is still open; Metro asked in return why it is relevant. |
| `MET-A-018` | Blocking, answered in part | Metro | Are the steward devices managed by Metro, and is a push notification service reachable from them? If Google services are unavailable on the device, the design changes. **Blocking, answered in part:** The device is a consumer Samsung on Android 14 or 15, so Play services and FCM can be assumed. Whether the fleet is enrolled in an MDM is still open, and still blocking. |
| `MET-A-019` | Answered | Metro | In which language will operators type incident descriptions? Danish free text against Danish scenario material is a different problem from the English equivalent, and the source document does not state a language anywhere. **Answered:** Danish. The scenario material supplied is Danish throughout. |
| `MET-A-020` | Blocking | Metro | Would the domain expert provide 40 to 60 short incident descriptions with the scenario each should trigger? This is the single most valuable artefact for the Machine Intelligence part of the semester and it does not exist today. |
| `MET-A-021` | Blocking | Metro | Do response checklists exist today, in the presentations or elsewhere, or would the students be designing them? This changes the item from data modelling to content design. |
| `MET-A-026` | Answered | Metro | What roles exist in the control room and among stewards today, and who is permitted to activate or stand down a scenario? The stories name an Operator, a Steward, an Operations Analyst and an Operations Administrator without defining any of them. **Answered:** All in CCR can activate a scenario; DOM approves a restriction; Operation Administration amends the catalogue. The Steward reports position and records patrols. The Operations Analyst has no act attached and should be dropped. |
| `MET-A-001` | Answered in part | Metro | How many distinct scenarios exist per line, and roughly how often is a scenario activated in practice? **Answered in part:** Six for M1/M2 in the material supplied, one general document for M3/M4. How often a scenario is activated in practice is still open. |
| `MET-A-002` | Shaping | Metro | Who in Metro operations owns scenario content, and how are scenarios corrected or added today? |
| `MET-A-004` | Shaping | Metro | How many concurrent users would the control-room side have, and is the control room using a desktop or a wall display? A wall display and a desktop are different products. |
| `MET-A-005` | Shaping | Metro | After how long should a locally held scenario be treated as untrustworthy? A steward underground for 40 minutes is a normal case, so the answer is not obvious. |
| `MET-A-007` | Shaping | Metro | Can two scenarios be active at the same time on the same line, for example a primary scenario and a local one at a single station? The source stories assume one. |
| `MET-A-008` | Shaping | Metro | What roles exist at a station during alternative operation, and can one steward satisfy more than one role at once? |
| `MET-A-010` | Answered | Metro | A screenshot or photograph of the current PDF as it appears on the steward device would tell the team what they are replacing. **Answered:** The PDF stewards use today came with the August material. |
| `MET-A-012` | Shaping | Metro | If a steward reports en route to a station, does that station count as covered for the purpose of the operator overview? The source stories do not say. |
| `MET-A-014` | Shaping | Metro | May a steward mark a station covered while not physically at it, for example when covering two adjacent stations? The answer determines whether coverage is evidence or intent. |
| `MET-A-016` | Shaping | Metro | Is there an existing radio or briefing protocol that instructions should follow in form or vocabulary? Free text and a structured message are different products. |
| `MET-A-023` | Shaping | Metro | Is the raised priority accepted? The alternative is that the log arrives late and several completed items have to be reopened to write to it. |
| `MET-A-024` | Shaping | Metro | Who reviews incidents afterwards, and what do they need to answer? The persona list names an Operations Analyst but no story describes their work. |
| `MET-A-027` | Shaping | Metro | Could two or three stewards take part in a 30-minute session at the university or over Teams? Testing with students instead is possible but weaker, and we would report it as such. |
| `MET-A-006` | Detail | either | If a steward reports a position against a scenario that has since been stood down, should that report be discarded, or retained for the incident log? |
| `MET-A-025` | Detail | Metro | Is there an existing identity system whose role model the students should mirror, even without integrating with it? |

## Case B. Manning/patrol requirement

3 of 24 items are blocked. 19 open questions, 10 of them answered in August.

| Item | Impact | Owner | Question |
|---|---|---|---|
| `MET-B-001` | Answered | Metro | Is a patrol record created automatically when a steward is detected at a station, or does the steward confirm it, or both? Story B1.1 specifies automatic registration in its title and a single tap in its first criterion. **Answered:** The steward confirms it, or starts and stops the record. The revised story B1.1 specifies opening and closing a record by scanning a bar or QR code. |
| `MET-B-003` | Answered | Metro | The station layout data, including concourse and platform areas as separate entities, is required before this item can start. **Answered:** Received: 46 stations across the two lines, 76 patrol levels, each station carrying a short code. The beacon-to-station mapping was answered "not relevant", which follows from the move to scanned codes. |
| `MET-B-003` | Answered in part | Metro | How many stations and how many separate patrol areas are in scope per line, and how long does a full patrol round take? Sizing decisions depend on the order of magnitude. **Answered in part:** 22 stations on M1/M2 of which 7 have a concourse, 24 on M3/M4 of which 23 do. How long a full round takes is still open, as is the list of trains. |
| `MET-B-007` | Answered | Metro | Is the hourly patrol requirement a rolling 60-minute window or a clock hour? The two produce different compliance figures for the same night. **Answered:** Rolling sixty minutes. |
| `MET-B-007` | Answered | Metro | Must concourse and platform be covered on the same pass by the same steward, or does any coverage of each within the window satisfy the requirement? **Answered:** Any coverage of each within the window satisfies the requirement. |
| `MET-B-009` | Answered | Metro | How many stewards work a night shift per line? Whether the list must coordinate two people or fifteen changes its design. **Answered:** Up to 20. |
| `MET-B-010` | Blocking | Metro | How many trains run at night per line, and where does the list of running trains come from today? |
| `MET-B-011` | Answered | Metro | Is the 70 percent requirement measured at every instant, as an average across the shift, or as a proportion of time above the threshold? A shift can satisfy one reading and fail another. **Answered:** Time-weighted across the shift: the trains are manned 70 percent of their running time on a night shift. |
| `MET-B-013` | Answered | Metro | An example of the compliance report as it is produced today, and the template or specification the contracting authority requires, would define what this report must replace. **Answered:** Answered "not relevant". No existing report is being replaced, so the team designs the artefact. |
| `MET-B-019` | Blocking | Metro | What retention period applies to steward presence records? The five-year figure in Case C is for a different obligation and should not be assumed here. |
| `MET-B-022` | Blocking | Metro | The ethical guidelines document is expected after the summer vacation. If it can reach us before the end of August it shapes this item and B-018; if later, the students proceed on our reading and revise once it arrives. |
| `MET-B-023` | Blocking | Metro | Who is entitled to see an individual steward record as opposed to aggregate coverage? This is the question the ethical framing turns on, and the source stories name Steward, Control Room Operator and Operations Administrator without defining their access. |
| `MET-B-006` | Shaping | Metro | If an observation arrives after the compliance report for that night has been produced, should the report be reissued or should the late record be excluded? This is a governance question rather than a technical one. |
| `MET-B-008` | Shaping | Metro | How long before a station falls out of compliance should it be flagged as at risk? Ten minutes and thirty minutes imply different working practices. |
| `MET-B-010` | Answered | Metro | Is the raised priority accepted? As a Won't, source story B3.1 has no input and the 70 percent requirement cannot be demonstrated at all. **Answered:** Yes. Metro raised source story B3.1 from Should to Must. Train manning no longer waits on hardware either, since a record is opened by scanning a printed code in the train. |
| `MET-B-012` | Shaping | Metro | What screen does the control room use for this, and would the dashboard be displayed continuously or opened when needed? |
| `MET-B-013` | Answered | Metro | Source story B4.2 appears in parentheses in the document, followed by the note DATA-BRICKS!. Is the item in scope as written, and what does the annotation refer to? **Answered:** In scope, and the annotation is a requirement: data must be exported to Metro's Databricks lakehouse. |
| `MET-B-015` | Shaping | Metro | Does any historical record of night-shift coverage exist in any form, even informal? Without it the forecast can only be trained and tested on simulated shifts, which we would state as a limitation. |
| `MET-B-018` | Shaping | Metro | The ethical guidelines document Metro will provide after the summer vacation should inform this item. If it arrives after the August backlog session, the students will design against our best reading and revise. Is a draft or an outline available earlier? |

## Case C. Operational Restrictions

9 of 27 items are blocked. 17 open questions, 6 of them answered in August.

| Item | Impact | Owner | Question |
|---|---|---|---|
| `MET-C-001` | Answered | Metro | The written procedure for handling Operational Restrictions is required before this item can start. **Answered:** Received as OPE-PR-S-400-04, with the restriction register for each line, the signature sheet, and a worked restriction per line. |
| `MET-C-001` | Blocking | Metro | The AAU evaluation attached a condition to this case: a structured domain onboarding session of two to three hours in week one, covering the restriction lifecycle, roles and regulatory requirements. Can that be scheduled if the case is activated? |
| `MET-C-001` | Answered in part | Metro | How many restrictions are typically in force at once, and how many are raised in a month? Ten and two hundred are different products. **Answered in part:** Up to 50 in force at once. How many are raised in a month is still open. |
| `MET-C-003` | Answered | Metro | What does signing mean today in the paper process, and is there any regulatory standard the electronic equivalent has to satisfy? Students should not invent an assurance level for a safety-critical signature. **Answered:** No regulatory standard applies. Signing is an acknowledgement of having read and understood the restriction, recorded at implementation and again at cancellation; approval by the DOM is a separate act. |
| `MET-C-004` | Answered | Metro | A copy or photograph of the existing Operational Restriction form would define the field set exactly. Deriving it from interviews will take a sprint and will still miss fields. **Answered:** The worked restrictions and the registers define the field set: number, restriction text, originator initials, date of implementation, date of cancellation. The two lines number restrictions differently. |
| `MET-C-007` | Blocking | Metro | When a Duty Operations Manager cannot approve a restriction, does it return to the originator for editing, or is it rejected outright and a new one raised? The two stories that mention this path do not agree. |
| `MET-C-009` | Blocking | Metro | When a restriction comes into force, is the set of operators required to sign it fixed at that moment, or does it include operators who join a later shift? The answer changes what the completeness view of C-016 can ever show as complete. |
| `MET-C-010` | Blocking | Metro | Is remote signing acceptable at the same assurance level as signing at the workstation, or does a remote signature need something additional? This is a governance question that determines the design. |
| `MET-C-011` | Blocking | Metro | Should an operator be able to take the desk in an emergency without completing the read-and-sign gate? The paper process presumably allows a supervisor to permit it, and a system with no such path will be worked around. |
| `MET-C-013` | Answered | Metro | Where does the system learn which operators are on shift? There is no story covering rosters, and this view cannot be built without that information. **Answered:** It must be signed by all CCR employees every time, so the view measures against the whole CCR population rather than a shift roster. The source of the employee list is still open. |
| `MET-C-014` | Blocking | Metro | Can someone other than the original originator start a cancellation, for example if that person has left or is unavailable? The source stories assume the originator is always available. |
| `MET-C-015` | Blocking | Metro | What happens today when someone who signed the implementation of a restriction is unavailable to confirm its cancellation? Without an answer, a restriction can remain uncancellable indefinitely. |
| `MET-C-018` | Blocking | Metro | By what means should a signer be notified out of hours: email, SMS, an application notification, or a telephone call as today? This determines a substantial part of the design. |
| `MET-C-022` | Blocking | Metro | What are the real roles and who may hold more than one? In particular, can the same person originate and approve a restriction when staffing is thin at night? |
| `MET-C-025` | Blocking | Metro | What makes two Operational Restrictions conflict? Examples of pairs that did conflict, and pairs that looked as though they did but did not, would be worth more than a definition. |
| `MET-C-023` | Shaping | Metro | After five years, must the record be destroyed, or may it be retained? The obligation to keep for five years and a prohibition on keeping longer are different requirements. |
| `MET-C-027` | Answered | Metro | A glossary of the Danish operational terms used across the cases would serve every product, and this case most of all. Two pages would save each team a week. **Answered:** An abbreviation list was supplied and is transcribed in docs/12-glossary.md. It is a list of abbreviations rather than definitions of the operational terms. |

## Case D. DID Master

11 of 24 items are blocked. 13 open questions.

| Item | Impact | Owner | Question |
|---|---|---|---|
| `MET-D-001` | Blocking | Metro | The Destination ID spreadsheets for both lines and the accompanying image set are required before any work on this product can start. This is the only case with data ready today, which makes it the fastest to start and the one most exposed if the files are delayed. |
| `MET-D-002` | Blocking | Metro | Are origin, destination, via and behaviour separate columns in the spreadsheet, or are they only expressed inside the description text? If the latter, extracting them is a substantial piece of work in itself. |
| `MET-D-004` | Blocking | Metro | Who is entitled to correct a Destination ID description, and does a correction require approval? For a record influencing routing, uncontrolled editing seems unlikely to be acceptable. |
| `MET-D-007` | Blocking | Metro | A screenshot of the current Destination ID selection screen in the control system would show the students what they are improving on. The case rests on the claim that the present presentation is inadequate. |
| `MET-D-010` | Blocking | Metro | In which language do operators describe what they need? Ranking Danish free text against a Danish catalogue is a materially different problem from the English equivalent, and it changes the approach the students should take. |
| `MET-D-015` | Blocking | Metro | Does the system apply a Destination ID to a train, or does it recommend one that the operator then applies in the existing control system? If it applies, we are discussing an interface to train control, which is beyond what a student project should attempt. We have assumed recommendation only. |
| `MET-D-015` | Blocking | Metro | What did the two missing epics, D5 and D6, contain? Our reconstruction covers selection and confirmation, the record of a selection, access control and audit. |
| `MET-D-016` | Blocking | Metro | How many Destination ID changes does a control room make in a typical day, and how many in a disrupted one? This determines the volume the record must sustain and whether the students should think about it at all. |
| `MET-D-017` | Blocking | Metro | Who maintains the Destination ID catalogue today, and is that the same group as the control-room operators who use it? |
| `MET-D-018` | Blocking | Metro | Would the domain expert write twenty to thirty realistic operator queries with the correct Destination ID for each? The students can extend that to a hundred during the semester, but the seed has to come from someone who does the job. This is the single most valuable artefact for this case. |
| `MET-D-019` | Shaping | Metro | How long does an operator currently spend finding the right Destination ID, and could one or two operators take part in a 30-minute session? Without a comparison the improvement can only be described, not measured. |
| `MET-D-021` | Shaping | Metro | What makes a set of Destination IDs adequate or inadequate for a planned track possession? Without a definition this item cannot be specified, which is part of why it is a Could. |
| `MET-D-022` | Shaping | Metro | Is this capability wanted in this product, or does it belong with the emergency scenarios of Case A? The two overlap and building it twice would be waste. |
