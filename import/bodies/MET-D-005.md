> **DID Master (Case D)** · Epic D-EP1: Catalogue data model, import and maintenance

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 5

## User story

As an Operations Administrator, I want to add new Destination IDs, so that the system accommodates network changes such as the Nordhavn extension.

## Context

The second half of source story D1.2. The extension is named as 2030, so the requirement is not that the system handle it now but that adding a batch of new records and new stations is a data operation rather than a redevelopment.

## Acceptance criteria

- [ ] A new Destination ID can be added through the same path as an import, in bulk or singly.
- [ ] Adding a station that does not yet exist in the network model is supported and does not corrupt existing records.
- [ ] A new record enters search, filtering and ranking with no code change.
- [ ] A batch addition is reversible if it is found to be wrong.

## Dependencies

- Requires D-004.

## Provenance

Source: D1.2
