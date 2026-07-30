> **DID Master (Case D)** · Epic D-EP8: Evaluation

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** evaluation · **Proposed sprint** 4

## User story

As a supervisor, I want the ranking measured against expert-confirmed answers and compared with the baseline, so that a claim about the system can be examined rather than demonstrated.

## Context

This is the item that makes the Machine Intelligence content of the semester assessable, and it is the reason a labelled set is the most valuable thing Metro can supply for this case. It also produces the comparative data that supports publication under Section 8 of the collaboration framework.

## Acceptance criteria

- [ ] An evaluation set of at least 100 natural-language queries, each with one Destination ID confirmed correct by the Metro domain expert, is committed as versioned test data.
- [ ] Top-one and top-five accuracy are computed for both the baseline of D-009 and the ranking of D-010 over the same set.
- [ ] The whole evaluation runs from a single command and is reproducible.
- [ ] Abstention rate from D-012 is reported alongside accuracy.
- [ ] The result is reported at a sprint review honestly, including when the baseline performs better.

## Dependencies

- Requires D-009 and D-010.
- Blocked on the seed queries from Metro.

## Open questions

- **[Blocking · Metro]** Would the domain expert write twenty to thirty realistic operator queries with the correct Destination ID for each? The students can extend that to a hundred during the semester, but the seed has to come from someone who does the job. This is the single most valuable artefact for this case.

## Provenance

Source: AAU-added.
