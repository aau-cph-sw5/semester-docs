# Case D. DID Master

*DID Master*

Decision support for assigning Destination IDs. The operator describes the intended destination or service in natural language, the system retrieves candidates from the catalogue, presents readable descriptions and graphical previews, and requires explicit operator confirmation before a Destination ID is applied.

| | |
|---|---|
| **AAU evaluation** | Recommended by the AAU evaluation as the best alignment with the Machine Intelligence course, and the only case with structured source data available in week 1. |
| **Metro contact** | Karsten Juhl (kju@metroservice.dk) |
| **Surfaces** | Desktop application for control-room operators, with back-end catalogue and ranking services. |
| **Data readiness** | M3M4: a spreadsheet of roughly 650 Destination IDs with descriptions, plus images showing route and behaviour. M1M2: roughly 450 with the same structure. The only case with structured source data ready. |

> The source document contains 9 stories, the fewest of the four cases, and its epic numbering runs D1, D2, D3, D4, then D7. Two epics were drafted and are absent from the delivered material. Items marked as reconstructed below are AAU proposals for what those epics most probably contained, written so that Metro can confirm or correct them rather than start from nothing. The case summary states that explicit operator confirmation is required before a Destination ID is applied, yet no delivered story covers applying one.

## At a glance

**24 items.** Priority: 14 Must, 8 Should, 2 Could. Readiness: 13 ready, 0 needing refinement, 11 blocked on Metro input. Size: 2×S, 15×M, 7×L.

**Minimum demonstrable product**, meaning the 8 Must items proposed for sprints 1 to 3: `MET-D-001`, `MET-D-002`, `MET-D-003`, `MET-D-006`, `MET-D-007`, `MET-D-008`, `MET-D-009`, `MET-D-013`. This is the set to argue about at the August session. If it is wrong, everything after it is wrong too.

## Epics

| Epic | Name | Items |
|---|---|---|
| `D-EP1` | Catalogue data model, import and maintenance | 5 |
| `D-EP2` | Browse, search and filter | 2 |
| `D-EP3` | Natural-language search and ranking | 6 |
| `D-EP4` | Preview and comparison | 2 |
| `D-EP5` | Selection, confirmation and record (reconstructed, presumed D5) | 2 |
| `D-EP6` | Audit, access and traceability (reconstructed, presumed D6) | 2 |
| `D-EP7` | Planning support | 2 |
| `D-EP8` | Evaluation | 2 |
| `D-EP9` | Inheritance and handover | 1 |

## Backlog index

| ID | Title | Epic | Size | Priority | Readiness | Sprint |
|---|---|---|---|---|---|---|
| `MET-D-001` | Data quality assessment of the Destination ID catalogue | D-EP1 | M | Must | Blocked | 1 |
| `MET-D-002` | Catalogue data model with route attributes | D-EP1 | M | Must | Blocked | 2 |
| `MET-D-003` | Import the catalogue and image set | D-EP1 | L | Must | Blocked | 2 |
| `MET-D-004` | Correction and versioning of Destination ID records | D-EP1 | L | Should | Ready | 4 |
| `MET-D-005` | Adding new Destination IDs, including a future network extension | D-EP1 | M | Should | Ready | 5 |
| `MET-D-006` | Attribute filter and sort over the catalogue | D-EP2 | M | Must | Ready | 3 |
| `MET-D-007` | Readable route and behaviour presentation | D-EP2 | M | Must | Blocked | 3 |
| `MET-D-008` | Query and result contract between client and ranking service | D-EP3 | M | Must | Ready | 2 |
| `MET-D-009` | Deterministic baseline ranker | D-EP3 | M | Must | Ready | 3 |
| `MET-D-010` | Natural-language ranking of candidate Destination IDs | D-EP3 | L | Must | Blocked | 4 |
| `MET-D-011` | Rationale for each ranked candidate | D-EP3 | M | Should | Ready | 4 |
| `MET-D-012` | Abstention when no confident match exists | D-EP3 | S | Must | Ready | 4 |
| `MET-D-013` | Graphical preview alongside the description | D-EP4 | M | Must | Ready | 3 |
| `MET-D-014` | Side-by-side comparison of candidates | D-EP4 | M | Should | Ready | 5 |
| `MET-D-015` | Operator selects and confirms a Destination ID [reconstructed] | D-EP5 | L | Must | Blocked | 5 |
| `MET-D-016` | Record of every selection [reconstructed] | D-EP5 | M | Must | Blocked | 5 |
| `MET-D-017` | Role-based access control [reconstructed] | D-EP6 | M | Should | Blocked | 4 |
| `MET-D-018` | Evaluation set and measured accuracy against the baseline | D-EP8 | M | Must | Blocked | 4 |
| `MET-D-019` | Time-to-selection measured against the current practice | D-EP8 | M | Should | Ready | 6 |
| `MET-D-020` | Audit trail of catalogue changes [reconstructed] | D-EP6 | M | Should | Ready | 3 |
| `MET-D-021` | Coverage gaps and candidate new Destination IDs for planning | D-EP7 | L | Could | Blocked | - |
| `MET-D-022` | Suggested alternative service for a failed area | D-EP7 | L | Could | Blocked | - |
| `MET-D-023` | Degraded behaviour when the ranking service is unavailable | D-EP3 | S | Should | Ready | 4 |
| `MET-D-024` | Inheritance package for the 2027 cohort | D-EP9 | L | Must | Ready | 7 |

---

## D-EP1. Catalogue data model, import and maintenance

### MET-D-001 · Data quality assessment of the Destination ID catalogue

`size:M` `prio:Must` `status:Blocked` `track:backend` `type:data` `sprint:1`

**As a team on this product, we want the quality of the source spreadsheet assessed before we build on it, so that we discover uneven descriptions in week one rather than in sprint four.**

The source document describes the spreadsheet as containing accurate descriptions of each Destination ID. If the descriptions are uneven, incomplete or inconsistent in vocabulary, the ranking work of epic D-EP3 inherits that unevenness and the measured accuracy of D-018 will reflect the data rather than the method. This is a timeboxed assessment producing a report, not a cleaning exercise.

**Acceptance criteria**

- [ ] Every column is profiled for completeness, and the proportion of records with an empty or placeholder description is reported.
- [ ] Description length distribution and vocabulary consistency are reported, since both bear on whether text ranking can work at all.
- [ ] Every Destination ID is checked for a corresponding image, and orphans in both directions are listed.
- [ ] Differences between the M1M2 and M3M4 datasets are documented rather than averaged.
- [ ] The report ends with a recommendation on whether cleaning is required before D-005 proceeds, with an estimate.

**Dependencies**

- Blocked until the spreadsheets and image set are received.

**Open questions**

- *[Blocking · Metro]* The Destination ID spreadsheets for both lines and the accompanying image set are required before any work on this product can start. This is the only case with data ready today, which makes it the fastest to start and the one most exposed if the files are delayed.

*Source: AAU-added.*

### MET-D-002 · Catalogue data model with route attributes

`size:M` `prio:Must` `status:Blocked` `track:backend` `type:data` `sprint:2`

**As a developer on this product, I want Destination IDs modelled with their route attributes rather than held as free text, so that filtering, ranking and comparison all work from the same structure.**

Source story D2.1 requires filtering by origin, destination, via and behaviour, which means those attributes must be modelled. Whether they exist as columns in the spreadsheet or must be derived from prose descriptions is the open question, and D-001 answers it.

**Acceptance criteria**

- [ ] The model holds identity, line, origin, destination, intermediate points, behaviour and the free-text description as distinct fields.
- [ ] Attributes present in the spreadsheet are mapped directly; attributes that must be derived are marked as derived with the derivation recorded.
- [ ] The model accommodates both lines without a separate schema for each.
- [ ] Every field is documented with its meaning in operational terms, not only its type.

**Dependencies**

- Requires D-001.

**Open questions**

- *[Blocking · Metro]* Are origin, destination, via and behaviour separate columns in the spreadsheet, or are they only expressed inside the description text? If the latter, extracting them is a substantial piece of work in itself.

*Source: D2.1, D1.1*

### MET-D-003 · Import the catalogue and image set

`size:L` `prio:Must` `status:Blocked` `track:backend` `type:feature` `sprint:2`

**As an Operations Administrator, I want the existing descriptions and images imported into the system, so that operators can search and view all Destination ID information in one place.**

Source story D1.1. Import is not a one-off script: the catalogue changes, so the import path is also the update path and should be built as such from the beginning.

**Acceptance criteria**

- [ ] Each Destination ID record is linked to its description and its image.
- [ ] Import is repeatable and idempotent; re-running it does not duplicate records.
- [ ] A record whose image is missing imports successfully and is reported, rather than failing the run.
- [ ] Import produces a summary stating records created, updated, skipped and rejected, with reasons.
- [ ] Opening an imported Destination ID shows its description and its image together.

**Dependencies**

- Requires D-002.

*Source: D1.1*

### MET-D-004 · Correction and versioning of Destination ID records

`size:L` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:4`

**As an Operations Administrator, I want to correct a Destination ID when an error is found, with the change recorded, so that the catalogue stays accurate and the correction is traceable.**

Source story D1.2, whose two criteria are dash-prefixed notes rather than testable conditions. The requirement underneath them is reference-data versioning: a Destination ID that is corrected has been used before the correction, so the record of what an operator saw at the time must survive.

**Acceptance criteria**

- [ ] A correction preserves the previous version and records actor, time and reason.
- [ ] A past selection made under a previous version resolves to the version in force at the time, not the current one.
- [ ] The history of a Destination ID is viewable.
- [ ] A correction is reflected in search and ranking without a restart.

**Dependencies**

- Requires D-003 and D-020.

**Open questions**

- *[Blocking · Metro]* Who is entitled to correct a Destination ID description, and does a correction require approval? For a record influencing routing, uncontrolled editing seems unlikely to be acceptable.

*Source: D1.2*

### MET-D-005 · Adding new Destination IDs, including a future network extension

`size:M` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:5`

**As an Operations Administrator, I want to add new Destination IDs, so that the system accommodates network changes such as the Nordhavn extension.**

The second half of source story D1.2. The extension is named as 2030, so the requirement is not that the system handle it now but that adding a batch of new records and new stations is a data operation rather than a redevelopment.

**Acceptance criteria**

- [ ] A new Destination ID can be added through the same path as an import, in bulk or singly.
- [ ] Adding a station that does not yet exist in the network model is supported and does not corrupt existing records.
- [ ] A new record enters search, filtering and ranking with no code change.
- [ ] A batch addition is reversible if it is found to be wrong.

**Dependencies**

- Requires D-004.

*Source: D1.2*

---

## D-EP2. Browse, search and filter

### MET-D-006 · Attribute filter and sort over the catalogue

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As a Control Room Operator, I want to filter and sort Destination IDs by route attributes, so that I can narrow hundreds of options down to the relevant few.**

Source story D2.1. This is also the fallback the ranking work of D-017 depends on: when no confident match exists, the operator is returned here rather than given a poor ranking.

**Acceptance criteria**

- [ ] Filters cover origin, destination, intermediate points and behaviour, and combine.
- [ ] The result count is shown before the operator commits to reading the list.
- [ ] Results can be sorted by any filterable attribute.
- [ ] A filter combination yielding no results says so and offers to relax the most restrictive term.
- [ ] Filtering the full catalogue returns in under 500 ms at the 95th percentile on staging, reported with the sample size.

**Dependencies**

- Requires D-003.

*Source: D2.1*

### MET-D-007 · Readable route and behaviour presentation

`size:M` `prio:Must` `status:Blocked` `track:frontend` `type:feature` `sprint:3`

**As a Control Room Operator, I want each Destination ID presented so that I understand what it does beyond its name, so that I am not selecting from a list of codes.**

Source story D2.2, whose criterion is that the information be presented in readable form rather than name only, which cannot fail a review. What readable means here is a design question that has to be settled with an operator, since the whole premise of the case is that the present naming does not convey route or behaviour.

**Acceptance criteria**

- [ ] A Destination ID displays its route and behaviour in a form that does not require knowledge of the naming convention.
- [ ] The presentation is validated with at least one operator before it is treated as done, and the feedback is recorded.
- [ ] The same presentation is used in search results, in comparison and in confirmation, so the operator sees one representation throughout.
- [ ] A record with a missing or empty description displays as incomplete rather than as blank.

**Dependencies**

- Requires D-003.

**Open questions**

- *[Blocking · Metro]* A screenshot of the current Destination ID selection screen in the control system would show the students what they are improving on. The case rests on the claim that the present presentation is inadequate.

*Source: D2.2*

---

## D-EP3. Natural-language search and ranking

### MET-D-008 · Query and result contract between client and ranking service

`size:M` `prio:Must` `status:Ready` `track:cross-team` `type:contract` `sprint:2`

**As a developer on either side, I want a published contract for queries and ranked results, so that the client and the ranking service can be built in parallel and either implementation can be replaced.**

This is the cross-team interface of the product and it is also what allows the baseline of D-009 and the ranking of D-010 to be swapped and compared without either team rewriting anything.

**Acceptance criteria**

- [ ] The contract covers the query, the ranked candidates, per-candidate score and rationale, and the abstention case.
- [ ] Both the baseline and the ranking implementation satisfy the same contract, verified by a shared test suite.
- [ ] The contract is versioned and committed to a shared repository path.
- [ ] A stub implementation is available to the client team before the real one exists.

**Dependencies**

- Blocks D-009, D-010, D-011.

*Source: AAU-added.*

### MET-D-009 · Deterministic baseline ranker

`size:M` `prio:Must` `status:Ready` `track:backend` `type:feature` `sprint:3`

**As a developer on this product, I want a deterministic ranker built before any learned method, so that we have a working product and a control condition to measure against.**

Nothing in the source document asks for a baseline. It is the item that guarantees a deliverable if the ranking work disappoints, and it is the control that makes the measured comparison of D-018 meaningful. It is built first for both reasons.

**Acceptance criteria**

- [ ] The baseline combines attribute matching with keyword matching over the description field and returns a ranked list for any query.
- [ ] It is exposed behind the contract of D-008 and is selectable at runtime.
- [ ] It is deterministic: the same query returns the same ranking, verified by a test.
- [ ] Its ranking logic is documented in enough detail that a reader could reimplement it.

**Dependencies**

- Requires D-002 and D-008.

*Source: AAU-added.*

### MET-D-010 · Natural-language ranking of candidate Destination IDs

`size:L` `prio:Must` `status:Blocked` `track:backend` `type:feature` `sprint:4`

**As a Control Room Operator, I want to describe the destination or service I need in plain language and get a ranked shortlist, so that I do not have to know the exact Destination ID name in advance.**

Source story D3.1, the core of the case. The original acceptance criteria are satisfied by any method returning a list, which is why the measurement in D-018 is part of this epic rather than optional. The students implement the ranking themselves; no external model is supplied.

**Acceptance criteria**

- [ ] A plain-language query returns a ranked shortlist of at most five candidates through the contract of D-008.
- [ ] The method is documented, including how it represents the query and the catalogue, and what it cannot handle.
- [ ] The 95th-percentile response time stays under 3 seconds over the evaluation set on staging, reported with the sample size.
- [ ] The implementation is selectable against the baseline of D-009 at runtime, so both can be measured on the same traffic.
- [ ] The method is measured by D-018 and the figure is reported at a sprint review.

**Dependencies**

- Requires D-008 and D-009.
- Measured by D-018.

**Open questions**

- *[Blocking · Metro]* In which language do operators describe what they need? Ranking Danish free text against a Danish catalogue is a materially different problem from the English equivalent, and it changes the approach the students should take.

*Source: D3.1*

### MET-D-011 · Rationale for each ranked candidate

`size:M` `prio:Should` `status:Ready` `track:backend` `type:feature` `sprint:4`

**As a Control Room Operator, I want a short reason why each candidate matches what I described, so that I can choose with confidence and judge when not to trust the ranking.**

Source story D3.2. In a safety-relevant setting the rationale is what allows the operator to be a check on the system rather than a conduit for it, so it is closer to a requirement than to a refinement.

**Acceptance criteria**

- [ ] Each candidate carries a rationale of at most 200 characters referencing a specific attribute of the query.
- [ ] The rationale is derived from the ranking, not composed independently of it, so it cannot contradict the score.
- [ ] A candidate whose rationale cannot be produced is not shown.

**Dependencies**

- Requires D-010.

*Source: D3.2*

### MET-D-012 · Abstention when no confident match exists

`size:S` `prio:Must` `status:Ready` `track:backend` `type:feature` `sprint:4`

**As a Control Room Operator, I want to be told plainly when nothing matches well, so that I am not pushed toward a poor choice by a list that looks confident.**

The second criterion of source story D3.1, which defines neither a good match nor a way to fail. In a decision-support tool for a safety-relevant action, a confident-looking wrong answer is the most dangerous output the system can produce, so abstention is a Must rather than a refinement of D-010.

**Acceptance criteria**

- [ ] When the top candidate scores below the agreed threshold, the interface states that no confident match was found.
- [ ] In that case the operator is offered the filter view of D-006 rather than a ranked list.
- [ ] The threshold is configurable and its value is justified by the measurement in D-018 rather than chosen arbitrarily.
- [ ] Abstention rate is reported alongside accuracy, since a system that abstains on everything is trivially never wrong.

**Dependencies**

- Requires D-010 and D-006.

*Source: D3.1*

### MET-D-023 · Degraded behaviour when the ranking service is unavailable

`size:S` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:4`

**As a Control Room Operator, I want the catalogue to remain usable when the ranking service is not, so that a component failure does not leave me worse off than before the system existed.**

No source story addresses failure of any component. The operator has a working method today, so a product that fails closed is worse than no product. Falling back to the filter view of D-006 preserves the operator ability to work.

**Acceptance criteria**

- [ ] A ranking request that errors or exceeds its timeout falls back to the filter view of D-006.
- [ ] The interface states that assisted ranking is unavailable rather than showing an empty result.
- [ ] The fallback is exercised by a test that disables the ranking service.

**Dependencies**

- Requires D-006 and D-010.

*Source: AAU-added.*

---

## D-EP4. Preview and comparison

### MET-D-013 · Graphical preview alongside the description

`size:M` `prio:Must` `status:Ready` `track:frontend` `type:feature` `sprint:3`

**As a Control Room Operator, I want to see the behaviour image with the text description, so that I can verify the route visually before choosing.**

Source story D4.1.

**Acceptance criteria**

- [ ] A candidate displays its image and its description together without navigation.
- [ ] The image is legible at the resolution the control room uses, and can be enlarged.
- [ ] A candidate with no image is shown as such rather than with a broken placeholder.
- [ ] The preview loads without a perceptible delay relative to the text, or shows its loading state.

**Dependencies**

- Requires D-003 and D-007.

*Source: D4.1*

### MET-D-014 · Side-by-side comparison of candidates

`size:M` `prio:Should` `status:Ready` `track:frontend` `type:feature` `sprint:5`

**As a Control Room Operator, I want to compare two or more candidates side by side, so that I can pick the best one for the service I need.**

Source story D4.2. Comparison is where the operator makes the actual decision, so the differences between candidates matter more than their full descriptions.

**Acceptance criteria**

- [ ] Two or more selected candidates display their key attributes and previews side by side.
- [ ] Attributes that differ between the compared candidates are distinguished from those that agree.
- [ ] Comparison is reachable directly from a ranked result without losing the result set.
- [ ] At least three candidates can be compared at the control-room resolution.

**Dependencies**

- Requires D-013.

*Source: D4.2*

---

## D-EP5. Selection, confirmation and record (reconstructed, presumed D5)

### MET-D-015 · Operator selects and confirms a Destination ID [reconstructed]

`size:L` `prio:Must` `status:Blocked` `track:frontend` `type:feature` `sprint:5`

**As a Control Room Operator, I want to confirm my choice of Destination ID explicitly, so that no assignment happens without a deliberate act by me.**

Reconstructed. The case summary states that the system requires explicit operator confirmation before a Destination ID is applied, and no delivered story covers this. The delivered epic numbering skips D5 and D6, so this is our proposal for what the first of them contained. It is the central interaction of the product and the point at which its safety properties are decided, so it should not be inferred by a student team.

**Acceptance criteria**

- [ ] Confirming a Destination ID requires an explicit action distinct from selecting or previewing it.
- [ ] The confirmation screen restates the route and behaviour in the presentation of D-007, so the operator confirms meaning rather than a code.
- [ ] Confirmation is refused if the record changed since the operator opened it, and the operator is shown what changed.
- [ ] The confirmed choice is recorded per D-016 before any downstream effect occurs.
- [ ] A confirmation can be abandoned at any point with no record of a choice having been made.

**Dependencies**

- Requires D-007, D-013, D-016.
- Blocked on confirmation of the reconstruction and on the answer to whether the system applies or only recommends.

**Open questions**

- *[Blocking · Metro]* Does the system apply a Destination ID to a train, or does it recommend one that the operator then applies in the existing control system? If it applies, we are discussing an interface to train control, which is beyond what a student project should attempt. We have assumed recommendation only.
- *[Blocking · Metro]* What did the two missing epics, D5 and D6, contain? Our reconstruction covers selection and confirmation, the record of a selection, access control and audit.

*Source: AAU-reconstructed, presumed epic D5. Evidenced by the case summary.*

### MET-D-016 · Record of every selection [reconstructed]

`size:M` `prio:Must` `status:Blocked` `track:backend` `type:tech` `sprint:5`

**As an Operations Administrator, I want every confirmed Destination ID recorded with who chose it, when, and on what basis, so that a routing decision can be reconstructed afterwards.**

Reconstructed. Case D is the only one of the four with no logging story in the delivered document, while Case A has A6.1 and Case C has C10.2. For a system influencing train routing this cannot be an omission by design.

**Acceptance criteria**

- [ ] A confirmed selection records operator, Destination ID, the version of that record, the query that led to it, and the server timestamp.
- [ ] The ranked candidates the operator was shown are recorded alongside, so a poor outcome can be traced to what the system offered.
- [ ] Records are append-only, with no code path that alters one.
- [ ] Selections are queryable by date, operator and Destination ID.

**Dependencies**

- Blocks D-015.

**Open questions**

- *[Blocking · Metro]* How many Destination ID changes does a control room make in a typical day, and how many in a disrupted one? This determines the volume the record must sustain and whether the students should think about it at all.

*Source: AAU-reconstructed, presumed epic D6.*

---

## D-EP6. Audit, access and traceability (reconstructed, presumed D6)

### MET-D-017 · Role-based access control [reconstructed]

`size:M` `prio:Should` `status:Blocked` `track:backend` `type:compliance` `sprint:4`

**As an administrator, I want catalogue maintenance separated from operational use, so that an operator cannot alter the reference data they depend on.**

Reconstructed. Case D is the only case with no access-control story in the delivered document. The separation that matters here is between using the catalogue and changing it, since D-004 permits correction of records that influence routing.

**Acceptance criteria**

- [ ] Roles distinguish operational use from catalogue maintenance, and the matrix is documented as data.
- [ ] An operator cannot reach any catalogue-editing path, verified by a test.
- [ ] Every access to a maintenance function is recorded to the audit trail of D-020.
- [ ] Every entry in the matrix is covered by a test asserting both permission and refusal.

**Dependencies**

- Blocked on the real role definitions from Metro.

**Open questions**

- *[Blocking · Metro]* Who maintains the Destination ID catalogue today, and is that the same group as the control-room operators who use it?

*Source: AAU-reconstructed, presumed epic D6.*

### MET-D-020 · Audit trail of catalogue changes [reconstructed]

`size:M` `prio:Should` `status:Ready` `track:backend` `type:tech` `sprint:3`

**As an Operations Administrator, I want every change to the catalogue recorded, so that an incorrect record can be traced to who changed it and when.**

Reconstructed, and the counterpart to D-016. D-004 permits correction of records that influence routing, which makes an audit trail a precondition of that item rather than a companion to it.

**Acceptance criteria**

- [ ] Every create, correct and add operation records actor, time, prior version and reason.
- [ ] The trail is append-only, with no code path that alters an entry.
- [ ] The state of the catalogue at any past moment can be reconstructed.
- [ ] Import runs are recorded as single auditable events with their summary from D-003.

**Dependencies**

- Blocks D-004.

*Source: AAU-reconstructed, presumed epic D6.*

---

## D-EP7. Planning support

### MET-D-021 · Coverage gaps and candidate new Destination IDs for planning

`size:L` `prio:Could` `status:Blocked` `track:backend` `type:feature`

**As an Operations or Maintenance Planner, I want to identify gaps or candidate new Destination IDs for track-possession scenarios, so that possessions and simultaneous service can be planned more efficiently.**

Source story D7.1, a secondary and stretch item in the source document and treated as such here. It requires a notion of coverage over the network that nothing in the delivered material defines.

**Acceptance criteria**

- [ ] A planning scenario can be described and the catalogue searched for what does or does not serve it.
- [ ] Gaps are expressed in operational terms rather than as an absence of records.
- [ ] The definition of a gap is documented and derived from Metro guidance rather than invented.

**Dependencies**

- Requires D-006.
- Blocked on a definition of coverage.

**Open questions**

- *[Shaping · Metro]* What makes a set of Destination IDs adequate or inadequate for a planned track possession? Without a definition this item cannot be specified, which is part of why it is a Could.

*Source: D7.1*

### MET-D-022 · Suggested alternative service for a failed area

`size:L` `prio:Could` `status:Blocked` `track:backend` `type:feature`

**As an Operations Planner, I want alternative services suggested when an area or location has failed, so that a fallback can be established quickly.**

The second criterion of source story D7.1, which is a distinct capability from gap discovery and is closer to the emergency work of Case A than to the catalogue work of this one.

**Acceptance criteria**

- [ ] Given a failed area, the system proposes Destination IDs that maintain service around it.
- [ ] Each proposal states what service it preserves and what it does not.
- [ ] Proposals are advisory and require the confirmation of D-015 like any other selection.

**Dependencies**

- Requires D-021.

**Open questions**

- *[Shaping · Metro]* Is this capability wanted in this product, or does it belong with the emergency scenarios of Case A? The two overlap and building it twice would be waste.

*Source: D7.1*

---

## D-EP8. Evaluation

### MET-D-018 · Evaluation set and measured accuracy against the baseline

`size:M` `prio:Must` `status:Blocked` `track:backend` `type:evaluation` `sprint:4`

**As a supervisor, I want the ranking measured against expert-confirmed answers and compared with the baseline, so that a claim about the system can be examined rather than demonstrated.**

This is the item that makes the Machine Intelligence content of the semester assessable, and it is the reason a labelled set is the most valuable thing Metro can supply for this case. It also produces the comparative data that supports publication under Section 8 of the collaboration framework.

**Acceptance criteria**

- [ ] An evaluation set of at least 100 natural-language queries, each with one Destination ID confirmed correct by the Metro domain expert, is committed as versioned test data.
- [ ] Top-one and top-five accuracy are computed for both the baseline of D-009 and the ranking of D-010 over the same set.
- [ ] The whole evaluation runs from a single command and is reproducible.
- [ ] Abstention rate from D-012 is reported alongside accuracy.
- [ ] The result is reported at a sprint review honestly, including when the baseline performs better.

**Dependencies**

- Requires D-009 and D-010.
- Blocked on the seed queries from Metro.

**Open questions**

- *[Blocking · Metro]* Would the domain expert write twenty to thirty realistic operator queries with the correct Destination ID for each? The students can extend that to a hundred during the semester, but the seed has to come from someone who does the job. This is the single most valuable artefact for this case.

*Source: AAU-added.*

### MET-D-019 · Time-to-selection measured against the current practice

`size:M` `prio:Should` `status:Ready` `track:cross-team` `type:evaluation` `sprint:6`

**As a supervisor, I want the claim that the system is faster than current practice tested rather than asserted, so that the product benefit is evidenced.**

The whole case rests on the premise that selecting by name from a long list is slow and error-prone. Measuring the improvement is both the honest way to make that claim and a strong piece of evaluation for the project report.

**Acceptance criteria**

- [ ] A task-based protocol gives participants a service to establish and asks them to identify the Destination ID.
- [ ] Time to correct selection and error rate are measured, with the number of participants stated.
- [ ] A comparison condition using the current method is included where it can be arranged, and its absence is reported where it cannot.
- [ ] The protocol and the raw timings are committed so the 2027 cohort can repeat the measurement.

**Dependencies**

- Requires D-015.

**Open questions**

- *[Shaping · Metro]* How long does an operator currently spend finding the right Destination ID, and could one or two operators take part in a 30-minute session? Without a comparison the improvement can only be described, not measured.

*Source: AAU-added.*

---

## D-EP9. Inheritance and handover

### MET-D-024 · Inheritance package for the 2027 cohort

`size:L` `prio:Must` `status:Ready` `track:cross-team` `type:tech` `sprint:7`

**As a member of the 2027 cohort, I want the ranking method and its measured performance documented, so that I can improve on it rather than start again.**

This product has the clearest continuation path of the four: a measured baseline and a measured method invite the next cohort to beat both. That only works if the evaluation set and the harness survive intact.

**Acceptance criteria**

- [ ] The evaluation set, the harness and the recorded accuracy figures are committed with the method that produced them.
- [ ] Architecture decision records exist for the ranking approach, the abstention threshold and the catalogue versioning design.
- [ ] Characterisation tests cover the ranking behaviour so a future team can refactor safely.
- [ ] A handover note states what works, what does not, what was cut and why, and what the next team should do first.
- [ ] The reconstructed items D-015 through D-020 are flagged in the handover with the status of Metro confirmation.

*Source: AAU-added.*

---
