# Data models

A register of the persisted entities in each product, so that four teams sharing a
codebase can see what exists before adding something that already does.

Adapted from Educado's `MODELS.md`, which served exactly this purpose and did it
well. Their format is kept; the content is theirs to their domain and ours to
ours.

---

## The rule

**If you add or change a persisted entity, update this file in the same pull
request.** Not afterwards. A register that is a sprint behind is worse than none,
because people trust it.

**Consult before changing a shared entity.** If another team reads or writes it,
raise the change at the integration meeting. A field removed quietly is a
production defect in somebody else's feature.

## Where the models live

This file is the cross-product register. Each product keeps the authoritative
schema in its own repository, next to the code. What goes here is the summary a
developer on another team needs in order to know whether to ask a question.

## Format

Each entity gets a short description of what it represents in operational terms,
not in database terms, and a table.

| Column | Meaning |
|---|---|
| Field | Name as it appears in the schema |
| Type | Storage type |
| Description | What it means to Metro, not what it means to the database |
| Generated | The system sets it, not the caller |
| Required | Cannot be absent |
| Values | Constraints, ranges, permitted values |

Keep a change history at the top of each product's section. Educado did this and
it is the reason their file stayed usable across two cohorts.

---

## Case A. Emergency Scenarios

<details><summary>Change history</summary>

| Date | Note |
|---|---|
| | First entry to be added by the team in sprint 2 |

</details>

The scenario model is derived from the two Metro alternative-operation
presentations in `MET-A-001` and given a schema in `MET-A-002`. Until those items
are done, this section is deliberately empty: the entities are not yet known and
inventing them here would be a guess that other teams would build on.

Expected entities, from the backlog, subject to what the presentations actually
contain: Scenario, RequiredStation, StationRole, ActionStep, StewardAssignment,
PositionReport, IncidentEvent.

## Case B. Manning/patrol requirement

<details><summary>Change history</summary>

| Date | Note |
|---|---|
| | First entry to be added by the team in sprint 2 |

</details>

Both of the questions this section was waiting on were answered in August 2026.
`MET-B-001` is settled: a record is opened and closed by the steward scanning a bar
or QR code, at a station level or inside a train, so a presence record carries a
scanned, timestamped act rather than an inferred detection, and a beacon reading is
corroborating context. `MET-B-003` has its data: 46 stations across the two lines,
of which 30 have a concourse as well as a platform, giving 76 patrol levels. The
level, not the station, is the unit the patrol rule applies to.

Expected entities: Station, PatrolArea, Steward (synthetic identities only, see
[10-data-handling.md](10-data-handling.md)), Observation, PatrolRecord, Shift,
ManningSample, ComplianceReport, RetentionPolicy.

Note that the event store in `MET-B-020` is append-only. Entities in this product
are not updated in place; corrections are compensating events. Model accordingly
from the start, because retrofitting this is expensive.

## Case C. Operational Restrictions

<details><summary>Change history</summary>

| Date | Note |
|---|---|
| | First entry to be added by the team in sprint 2 |

</details>

The written procedure arrived in August 2026, so `MET-C-001` and `MET-C-004` are
released. The field set comes from the register and the worked restrictions Metro
supplied: a restriction number, the restriction text, the initials of the
originator, a date of implementation and a date of cancellation. Note that the two
lines number restrictions differently, `YYMMDD-NNNN` on M1/M2 and
`DD-MM-YYYY-NNNN` on M3/M4.

Expected entities: Restriction, RestrictionVersion, Signature, SignatureList,
StateTransition, Notification, ArchiveEntry, Role.

The signature is the entity to get right first, in `MET-C-003`. Eleven backlog
items depend on it and it is bound to a specific version of a restriction, so that
altering the text after signing voids the signature rather than silently carrying
it forward.

## Case D. DID Master

<details><summary>Change history</summary>

| Date | Note |
|---|---|
| | First entry to be added by the team in sprint 2 |

</details>

The one product whose model can be derived from real data in week one, once the
spreadsheets arrive. `MET-D-001` profiles the data before `MET-D-002` models it,
in that order, because the open question is whether route attributes exist as
columns or only inside prose descriptions.

Expected entities: DestinationId, DestinationIdVersion, RouteAttribute,
BehaviourImage, Selection, SelectionCandidate, EvaluationQuery, CatalogueAudit.

`DestinationId` is versioned reference data, not a mutable row. A selection made in
October must still resolve to the description the operator actually saw, even
after a correction in November.
