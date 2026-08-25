> **Manning/patrol requirement (Case B)** · Epic B-EP4: Train manning coverage

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 4

## User story

As a developer on this product, I want train manning supplied through an abstracted interface with a simulated or manually entered implementation, so that the design is ready for train hardware while that hardware is still under consideration.

## Context

Source story B3.2, raised from Won't to Should. As a Won't it removes the interface as well as the hardware, which leaves B3.1 with no input and makes the manning half of the compliance requirement undeliverable. Raised to Should as an interface only, it costs little and keeps the case whole.

## Acceptance criteria

- [ ] A manning source interface returns, for a given time, the set of running trains and which are manned.
- [ ] A manual or simulated implementation exists and is seeded from a fixture.
- [ ] No downstream component references beacons or any specific manning technology.

## Dependencies

- Blocks B-011.

## Open questions

- **[Answered · Metro, August 2026]** Is the raised priority accepted? **Yes.** Metro raised source story B3.1 from Should to Must in the revised document. Train manning also no longer waits on hardware: a steward opens and closes a manning record by scanning a printed code inside the train, so a future train-beacon deployment, which source story B3.2 anticipated, becomes one implementation behind this interface rather than the precondition for the feature.
- **[Shaping · Metro]** How many trains run at night per line, and where does the list of running trains come from today? The abstraction can be built and demonstrated against a synthetic fleet, so this shapes the fixture rather than stopping the item.

## Provenance

Source: B3.2, priority raised from Won't to Should by AAU
