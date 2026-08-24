> **Emergency Scenarios (Case A)** · Epic A-EP1: Foundation and scenario domain model

**Size** M · **Priority** Must · **Readiness** Ready · **Track** cross-team · **Type** spike · **Proposed sprint** 1

## User story

As a team on this product, we want a documented entity model for emergency scenarios extracted from the two Metro presentations, so that every other item on this backlog has something concrete to build against.

## Context

The source document states that no dataset exists and that the only assets are two presentations, one for M1M2 and one for M3M4. Nothing else in this backlog can be estimated honestly until the shape of a scenario is known. This is a timeboxed spike, not an implementation item, and its output is a document plus a schema proposal reviewed with the Metro domain expert.

## Acceptance criteria

- [ ] The entity model names every concept a scenario contains, at minimum scenario identity, affected line, required stations, per-station role, and the sequence of steward actions.
- [ ] Each entity is traced to the slide or passage in the Metro material that evidences it, or is marked as an assumption to be confirmed.
- [ ] Variation between the M1M2 and M3M4 material is documented explicitly rather than averaged away.
- [ ] The model is reviewed with the Metro domain expert and the review outcome is recorded in the repository.
- [ ] The spike is closed after 5 team-days regardless of completeness, with open questions carried into A-002.

## Dependencies

- Blocked until the two alternative-operation presentations are received from Metro Service.

## Open questions

- **[Answered · Metro, August 2026]** The alternative-operation material, required before this item can start. **Received, and more than was asked for.** M1/M2 is documented scenario by scenario: five fallback scenarios named for the section they cover (VAN-FB, FOR-KN, KHC-ISB, KHC-LGP, KHC) and *Hold Alle Tog*, each in a control-room and a steward view, most with separate steward-task and steward-placement documents. M3/M4 came as one presentation, *ATD, Alternativ TogDrift v2.1*. A station list for both lines came with it. Three things to read off the material before modelling: a scenario is defined by a section of line rather than by an incident type; the same scenario is a different document per role, so role is a property of the view rather than a filter over one text; and steward placement and steward tasks are separate concerns in Metro's own material.
- **[Answered in part · Metro, August 2026]** How many scenarios exist per line? Six for M1/M2 in the material supplied, one general document for M3/M4. How often a scenario is activated in practice is still unanswered.

## Provenance

Source: AAU-added. The source backlog contains no item for this work, which is the first work any team must do.
