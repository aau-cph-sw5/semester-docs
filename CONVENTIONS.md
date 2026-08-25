# Conventions

## Sizing

Sizes are relative and calibrated to a team of six students in a two-week sprint,
of which roughly half is available for implementation once teaching, coordination
and reporting are accounted for.

| Size | Meaning |
|---|---|
| **XS** | A few hours for one person. A configuration change, a copy fix, a single small test. |
| **S** | About one day for one person. |
| **M** | Two to three days for a pair. The typical size of a well-formed item. |
| **L** | Most of a sprint for a pair, or roughly half a sprint for the team. |
| **XL** | A full sprint for the whole team. Should normally be split before it is pulled. |
| **XXL** | Larger than a sprint. Must be split before it can enter a sprint. Present here only where the source material left a subsystem inside one story. |

**XL and XXL items may not enter a sprint.** They are split first. The size scale
is therefore doing prioritisation work as well as estimation: an item that cannot
be sized below L is telling you something about how well it is understood.

Sizes here are AAU's first pass. Teams re-estimate at their first refinement and
the numbers in this repository are not binding on them.

XS does not appear in these backlogs. Work below one day is handled as a task
inside an item rather than as a separate backlog entry, which keeps the board
readable. One item is XL, `MET-C-002`, and it carries a note saying so: it cannot
be sized properly until the spike in `MET-C-001` reveals how many states the
restriction lifecycle actually has, and it must be split before it is pulled.

### Source stories that were oversized as delivered

Several source stories were sized as stories and scoped as subsystems. These are
the ones that would have been XL or XXL if carried across unchanged, with what
they became. This table is the clearest single answer to the question of why the
delivered document is not yet a backlog.

| Source story | As delivered | Split into |
|---|---|---|
| B1.1 | XXL. Bundles BLE detection, station identification and registration, and contradicts itself on whether presence is detected or confirmed. | `MET-B-001` (evidence rule), `MET-B-002` (positioning interface), `MET-B-003` (station data), `MET-B-004` (capture), `MET-B-006` (duplicate handling) |
| C5 (epic) | XL. Four signatures in sequence over a state machine that is never itself specified. | `MET-C-001`, `MET-C-002` (lifecycle), `MET-C-014` (chain), `MET-C-015` (confirmations) |
| B6.2 | XL. A data lifecycle subsystem and an authorisation model in one Must. | `MET-B-019` (retention), `MET-B-023` (access) |
| A2.3 | XL. A real-time transport architecture carried by one clause. | `MET-A-003` (contract), `MET-A-004` (propagation), `MET-A-006` (reconnection) |
| D1.2 | L. Reference-data versioning stated as two dash-prefixed notes. | `MET-D-004` (correction and versioning), `MET-D-005` (additions) |
| D3.1 | L. The core of Case D with no accuracy requirement and no definition of failure. | `MET-D-009` (baseline), `MET-D-010` (ranking), `MET-D-012` (abstention), `MET-D-018` (measurement) |

## Readiness

| Status | Meaning |
|---|---|
| `status:ready` | **Ready.** Can be pulled into a sprint as written. |
| `status:refine` | **Needs refinement.** Needs an AAU refinement pass. No external input required. |
| `status:blocked` | **Blocked.** Cannot be completed without input from Metro Service. |

An item is Ready when its acceptance criteria can each fail. A criterion that any
delivered software satisfies is not a criterion.

## Priority

MoSCoW, as in the source material. Note that the Metro draft marked 38 of its 61
stories Must, which conveys no ordering. Priorities in this repository are AAU's
reading and are to be replaced at the August backlog session by an ordering that a
team can deliver against in five sprints.

## Acceptance criteria standard

Every criterion states a measurable threshold and the environment it is measured
in, or is a test protocol with a task, a sample and a success condition. Where a
source story said "clearly marked", "visually distinct" or "within a few seconds",
that phrasing has been replaced rather than carried over.

Human-factors requirements are kept, not deleted. They become measured tests with
participants, which is what the source stories were reaching for.

## Provenance

Every item carries its source, and the labels make it visible in GitHub:

| Label | Meaning |
|---|---|
| `provenance:metro` | Derived from a Metro user story, cited by its identifier. |
| `provenance:aau-added` | Added by AAU. No source story exists. |
| `provenance:reconstructed` | AAU's reconstruction of a missing source epic, pending Metro confirmation. |

This distinction matters at the August session: Metro should be able to see at a
glance what came from them and what did not.

## Definition of Ready

An item may be pulled into a sprint when it has a user story, acceptance criteria
that meet the standard above, a size of at most L, named dependencies, and no
unanswered blocking question. An L item may be pulled, but the team says at
planning why it is not being split; an XL or XXL item is split first, always.

The **Sprint** column in each backlog is a proposal about sequence, not a
decision that the item is pullable in that sprint. `MET-C-002` is proposed for
sprint 2 and is XL: what enters sprint 2 is the set of items it is split into at
the refinement before that sprint. Read the column as "not before this sprint".

An item that is Blocked may still appear in a proposed sprint and in a minimum
demonstrable product, because the product is incomplete without it. It cannot be
pulled until the question is answered. If a blocked item is the next thing your
team needs, that is the signal to raise it at the sprint review rather than to
start it quietly.

## Definition of Done

Merged to the shared branch; acceptance criteria demonstrated, not described;
tests passing in CI; any interface change reflected in the contract repository and
announced at the integration meeting; any decision a future reader would find
surprising recorded as an architecture decision record.
