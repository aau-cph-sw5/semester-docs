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

- **[Blocking · Metro]** Would the domain expert provide 40 to 60 short incident descriptions with the scenario each should trigger? **Metro's answer in August was that this item could be deleted. We have kept it and put the request back.** The reason is worth stating plainly. A-019 produces a scenario suggestion from a Danish free-text description. Without labelled descriptions that suggestion can be built and demonstrated but not measured, and no other item in the semester can be measured against real Metro material either: Case D is deprioritised and Case B has no historical night-shift record to evaluate a forecast against, per B-015. Deleting this item does not remove work; it removes the only place where the students can establish whether what they built is any good. The reply proposes a cheaper form of the request: the students draft candidate descriptions from the fallback scenario documents and Metro corrects and labels them, which is a review of sixty lines rather than an authoring task. The item stays blocked until this is settled.

## Provenance

Source: AAU-added.
