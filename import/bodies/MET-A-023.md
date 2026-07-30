> **Emergency Scenarios (Case A)** · Epic A-EP7: Incident log and post-incident analysis

**Size** L · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As an Operations Administrator, I want every scenario activation, staffing event and message recorded with a timestamp and an actor, so that the incident can be analysed afterwards.

## Context

Source story A6.1, raised from Should to Must. Eight other items on this backlog write to this log, so it cannot be built late without those items being rewritten. Raising the priority is an AAU judgement and should be confirmed with Metro rather than assumed.

## Acceptance criteria

- [ ] Every state-changing action in the product writes an event carrying type, actor, subject, payload and server timestamp.
- [ ] Events are append-only. There is no code path that updates or deletes one, verified by a test.
- [ ] Clock source is the server, and any client-supplied time is stored as a separate field rather than replacing it.
- [ ] The event schema is versioned and documented, and adding a new event type does not require a migration.
- [ ] Writing an event is on the same transaction boundary as the change it records, so the two cannot diverge.

## Dependencies

- Blocks A-007, A-009, A-014, A-016, A-021, A-024.

## Open questions

- **[Shaping · Metro]** Is the raised priority accepted? The alternative is that the log arrives late and several completed items have to be reopened to write to it.

## Provenance

Source: A6.1, priority raised from Should to Must by AAU
