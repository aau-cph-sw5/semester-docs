> **Steward Localization (Case B)** · Epic B-EP6: Coverage analytics and forecasting

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 5

## User story

As an Operations Administrator, I want a draft summary of the completed shift that I can review and adjust, so that reporting takes minutes rather than hours.

## Context

Source story B5.3, restated as composition from the record rather than generation. Everything in the summary is derived from stored events, so the summary cannot assert anything the record does not support.

## Acceptance criteria

- [ ] The summary is composed from the shift record and every statement in it traces to stored events.
- [ ] The summary is editable before it is finalised, and the edited version is stored separately from the generated one.
- [ ] A finalised summary carries the identity of the person who finalised it and the time.

## Dependencies

- Requires B-013.

## Provenance

Source: B5.3
