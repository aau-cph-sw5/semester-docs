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

- **[Answered · Metro, August 2026]** How is a scenario actually run today, end to end? **Described for both lines, and the two differ.** On M1/M2 the control room opens an Articulate Rise page when starting an emergency scenario, decides the strategy, and instructs the stewards, who open the same page on their own phones and enter the instructed fallback scenario number in the form `xx-xx-STW`. On M3/M4 the control room downloads the Minerva (D4) PowerPoint and runs it in presentation mode, the Control Room Supervisor decides the scenario and tells the other operators, the train dispatcher instructs the stewards over the radio, and the stewards open a second Articulate Rise page and choose the scenario there. Three things follow. The instruction travels by radio and no system carries it, so A-016 fills a gap rather than replacing a channel. The steward view is already addressed by an identifier that names the role, `xx-xx-STW`, so the scenario key and its role suffix are Metro's own convention and should be adopted rather than invented. And today's control-room artefact is a document opened per incident, not a live view, which means shared live state between the two roles is new capability rather than a reimplementation of something that exists.
- **[Answered · Metro, August 2026]** The alternative-operation material, required before this item can start. **Received, and more than was asked for.** M1/M2 is documented scenario by scenario: five fallback scenarios named for the section they cover (VAN-FB, FOR-KN, KHC-ISB, KHC-LGP, KHC) and *Hold Alle Tog*, each in a control-room and a steward view, most with separate steward-task and steward-placement documents. M3/M4 came as one presentation, *ATD, Alternativ TogDrift v2.1*. A station list for both lines came with it. Three things to read off the material before modelling: a scenario is defined by a section of line rather than by an incident type; the same scenario is a different document per role, so role is a property of the view rather than a filter over one text; and steward placement and steward tasks are separate concerns in Metro's own material.
- **[Answered in part · Metro, August 2026]** How many scenarios exist per line? Six for M1/M2 in the material supplied, one general document for M3/M4. How often a scenario is activated in practice is still unanswered.

## Provenance

Source: AAU-added. The source backlog contains no item for this work, which is the first work any team must do.
