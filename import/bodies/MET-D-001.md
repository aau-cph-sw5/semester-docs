> **DID Master (Case D)** · Epic D-EP1: Catalogue data model, import and maintenance

**Size** M · **Priority** Must · **Readiness** Blocked · **Track** backend · **Type** data · **Proposed sprint** 1

## User story

As a team on this product, we want the quality of the source spreadsheet assessed before we build on it, so that we discover uneven descriptions in week one rather than in sprint four.

## Context

The source document describes the spreadsheet as containing accurate descriptions of each Destination ID. If the descriptions are uneven, incomplete or inconsistent in vocabulary, the ranking work of epic D-EP3 inherits that unevenness and the measured accuracy of D-018 will reflect the data rather than the method. This is a timeboxed assessment producing a report, not a cleaning exercise.

## Acceptance criteria

- [ ] Every column is profiled for completeness, and the proportion of records with an empty or placeholder description is reported.
- [ ] Description length distribution and vocabulary consistency are reported, since both bear on whether text ranking can work at all.
- [ ] Every Destination ID is checked for a corresponding image, and orphans in both directions are listed.
- [ ] Differences between the M1M2 and M3M4 datasets are documented rather than averaged.
- [ ] The report ends with a recommendation on whether cleaning is required before D-005 proceeds, with an estimate.

## Dependencies

- Blocked until the spreadsheets and image set are received.

## Open questions

- **[Blocking · Metro]** The Destination ID spreadsheets for both lines and the accompanying image set are required before any work on this product can start. This is the only case with data ready today, which makes it the fastest to start and the one most exposed if the files are delayed.

## Provenance

Source: AAU-added.
