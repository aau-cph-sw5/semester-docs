> **Manning/patrol requirement (Case B)** · Epic B-EP2: Presence and patrol capture

**Size** S · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As an Operations Administrator, I want repeated or delayed observations not to distort the record, so that the compliance figures reflect what happened.

## Context

A handheld that reconnects after a period underground will deliver observations late and sometimes twice. Without this item the compliance percentages are quietly wrong, which is the worst failure mode for a system whose purpose is evidence.

## Acceptance criteria

- [ ] A duplicate observation does not create a second patrol record, demonstrated by a test over the fixture of B-002.
- [ ] An observation arriving out of order is placed by its observation timestamp rather than its arrival time.
- [ ] An observation arriving after the shift it belongs to has been reported is handled by a stated rule rather than silently accepted.

## Dependencies

- Requires B-002 and B-004.

## Open questions

- **[Answered · Metro, August 2026]** If an observation arrives after that night's report has been produced, is the report reissued or the record excluded? **Reissued.** The report is therefore a versioned artefact rather than a file produced once: a reissue supersedes the earlier version, the earlier version stays retrievable, and the record shows which observation caused the reissue. That is a stronger requirement than the original acceptance criterion and the right one for a document a contracting authority relies on.

## Provenance

Source: AAU-added.
