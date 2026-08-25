> **Emergency Scenarios (Case A)** · Epic A-EP6: Decision support: classification and checklists

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** evaluation · **Proposed sprint** 5

## User story

As a supervisor, I want the scenario suggestion measured against expert-labelled examples, so that a claim about it can be examined rather than demonstrated.

## Context

Nothing in the source document asks for a measured result anywhere, which is why the AI stories as written are satisfied by a decorative implementation. This item is what makes the work assessable under the Machine Intelligence course and it is also what produces comparable data across teams. Raised to Must in August 2026 for the same reason as A-019.

If the labelled examples do not arrive, the item is not abandoned. The team builds the evaluation set itself, from the scenario material, and reports it as a self-labelled set with the weaker claim that implies. That fallback is worse than expert labels and should be stated as such at the review, but it keeps the measurement in the semester.

## Acceptance criteria

- [ ] An evaluation set of at least 40 incident descriptions, each with the scenario an expert considers correct, is committed as versioned test data.
- [ ] Top-one and top-three accuracy are computed over the set and reproducible from a single command.
- [ ] A trivial baseline, for example keyword overlap, is measured on the same set and reported alongside.
- [ ] The result is reported honestly at a sprint review, including when the baseline performs better.

## Dependencies

- Requires A-019.
- Blocked on labelled examples from Metro.

## Open questions

- **[Blocking · Metro]** Would the domain expert provide 40 to 60 short incident descriptions with the scenario each should trigger? This is the single most valuable artefact for the Machine Intelligence part of the semester and it does not exist today. It is the one request to convert into a dated commitment at the August session: with Case D deprioritised, the measurable machine-intelligence content of the whole semester rests on this item.

## Provenance

Source: AAU-added.
