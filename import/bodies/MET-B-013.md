> **Manning/patrol requirement (Case B)** · Epic B-EP5: Compliance dashboard and reporting

**Size** L · **Priority** Must · **Readiness** Needs refinement · **Track** backend · **Type** compliance · **Proposed sprint** 5

## User story

As an Operations Administrator, I want to export a verifiable compliance report for a given night, so that we can evidence the required level of supervision to the contracting authority.

## Context

Source story B4.2, which arrives in the source document wrapped in parentheses and followed by an unresolved editorial note. This is the item that gives the whole product its purpose, since the contractual obligation is to document, not merely to know.

## Acceptance criteria

- [ ] The report covers per-station patrol coverage and train manning figures with timestamps for a selected night.
- [ ] Every figure in the report can be traced to the underlying records that produced it.
- [ ] The report states the rules used to compute it, including the window definition from B-007.
- [ ] Regenerating the report for the same night produces an identical document.
- [ ] The export format is one that survives outside the system and is readable without it.
- [ ] A machine-readable export shaped for a Gold-layer table accompanies the human-readable report, with the assumed table shape and field names written down.

## Dependencies

- Requires B-007, B-011, B-020.

## Open questions

- **[Answered · Metro, August 2026]** An example of the report as produced today, and the specification the contracting authority requires. **Answered "not relevant".** No existing report is being replaced, so the team designs the artefact rather than reproducing one, which raises rather than lowers the burden of justifying its shape.
- **[Answered · Metro, August 2026]** Is B4.2 in scope, and what does the DATA-BRICKS note mean? The revised story resolves it into a requirement: **"Data must be exported to DATA-BRICKS."** The item is in scope and the export is part of it. Students deploy nothing into Metro's tenant and hold no credentials for it, so what they build is an export in the agreed shape demonstrated on university infrastructure. Take the thirty minutes with whoever leads the data platform before implementing this.

## Provenance

Source: B4.2
