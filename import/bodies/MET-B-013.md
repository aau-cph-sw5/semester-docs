> **Steward Localization (Case B)** · Epic B-EP5: Compliance dashboard and reporting

**Size** L · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** compliance · **Proposed sprint** 5

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

## Dependencies

- Requires B-007, B-011, B-020.

## Open questions

- **[Blocking · Metro]** An example of the compliance report as it is produced today, and the template or specification the contracting authority requires, would define what this report must replace.
- **[Shaping · Metro]** Source story B4.2 appears in parentheses in the document, followed by the note DATA-BRICKS!. Is the item in scope as written, and what does the annotation refer to?

## Provenance

Source: B4.2
