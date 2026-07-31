> **DID Master (Case D)** · Epic D-EP1: Catalogue data model, import and maintenance

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** data · **Proposed sprint** 2

## User story

As a developer on this product, I want Destination IDs modelled with their route attributes rather than held as free text, so that filtering, ranking and comparison all work from the same structure.

## Context

Source story D2.1 requires filtering by origin, destination, via and behaviour, which means those attributes must be modelled. Whether they exist as columns in the spreadsheet or must be derived from prose descriptions is the open question, and D-001 answers it.

## Acceptance criteria

- [ ] The model holds identity, line, origin, destination, intermediate points, behaviour and the free-text description as distinct fields.
- [ ] Attributes present in the spreadsheet are mapped directly; attributes that must be derived are marked as derived with the derivation recorded.
- [ ] The model accommodates both lines without a separate schema for each.
- [ ] Every field is documented with its meaning in operational terms, not only its type.

## Dependencies

- Requires D-001.

## Open questions

- **[Blocking · Metro]** Are origin, destination, via and behaviour separate columns in the spreadsheet, or are they only expressed inside the description text? If the latter, extracting them is a substantial piece of work in itself.

## Provenance

Source: D2.1, D1.1
