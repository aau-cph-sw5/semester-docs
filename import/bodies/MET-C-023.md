> **Operational Restrictions (Case C)** · Epic C-EP9: Archiving and retention

**Size** M · **Priority** Should · **Readiness** Blocked · **Track** backend · **Type** feature · **Proposed sprint** 6

## User story

As a Safety Officer, I want cancelled restrictions archived automatically once all signatures are collected and retained for five years, so that manual archiving disappears while the retention obligation is met.

## Context

Source story C8.1. Retention interacts with the audit trail: what is archived, what remains searchable and what is eventually destroyed are three different questions and the source story answers only the first.

## Acceptance criteria

- [ ] A restriction whose cancellation is complete moves to the archive without manual action.
- [ ] An archived restriction remains retrievable in full for five years.
- [ ] What happens after five years is specified rather than left to accumulate.
- [ ] Archiving is recorded in the audit trail with the triggering event.

## Dependencies

- Requires C-015 and C-021.

## Open questions

- **[Shaping · Metro]** After five years, must the record be destroyed, or may it be retained? The obligation to keep for five years and a prohibition on keeping longer are different requirements.

## Provenance

Source: C8.1
