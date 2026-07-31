> **Steward Localization (Case B)** · Epic B-EP8: Verifiable historical record

**Size** L · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As an Operations Administrator, I want the underlying record to be append-only, so that the compliance evidence cannot be quietly altered.

## Context

Half of source story B7.1, brought forward. Tamper evidence cannot be added to a mutable store afterwards without rebuilding everything above it, so the storage decision is taken in the second sprint rather than the fifth.

## Acceptance criteria

- [ ] Presence, patrol and manning records are written append-only, with no code path that updates or deletes one.
- [ ] Corrections are expressed as compensating events rather than as edits, and the original remains visible.
- [ ] The event schema is versioned and documented.
- [ ] Every write carries actor, server timestamp and source.

## Dependencies

- Blocks B-004, B-013, B-019, B-021.

## Provenance

Source: B7.1, decomposed and brought forward
