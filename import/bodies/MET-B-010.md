> **Manning/patrol requirement (Case B)** · Epic B-EP4: Train manning coverage

**Size** M · **Priority** Must · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 2

## User story

As a developer on this product, I want train manning supplied through an abstracted interface with a simulated or manually entered implementation, so that the design is ready for train hardware while that hardware is still under consideration.

## Context

Source story B3.2, raised from Won't to Should by AAU and now Must. As a Won't it removes the interface as well as the hardware, which leaves B3.1 with no input and makes the manning half of the compliance requirement undeliverable. Raised as an interface only, it costs little and keeps the case whole. It is Must because Metro raised source story B3.1, delivered here as B-011, to Must in the August revision, and B-011 cannot be computed without this interface.

## Acceptance criteria

- [ ] A manning source interface returns, for a given time, the set of running trains and which are manned.
- [ ] A manual or simulated implementation exists and is seeded from a fixture.
- [ ] No downstream component references beacons or any specific manning technology.

## Dependencies

- Blocks B-011.

## Open questions

- **[Answered · Metro, 28 August 2026]** The beacons are already installed. Platforms, concourses and trains carry Bluetooth beacons deployed for another purpose, so a manning record reads existing hardware rather than waiting on a fitting programme.
- **[Answered · Metro, August 2026]** Is the raised priority accepted? **Yes.** Metro raised source story B3.1 from Should to Must in the revised document. Train manning also no longer waits on hardware: a steward opens and closes a manning record by scanning a printed code inside the train, so a future train-beacon deployment, which source story B3.2 anticipated, becomes one implementation behind this interface rather than the precondition for the feature.
- **[Answered · Metro, August 2026]** How many trains run at night, and where does the list come from? **The number varies with the track work done that night and with the day and time of year, and Metro needs to set it before the shift starts.** The expected number of trains in service is therefore shift configuration entered in advance, not something derived from a running-train feed. It is also the denominator of the 70 percent figure in B-011, so it must be stored with the shift and shown on the report. A compliance figure whose denominator was not recorded cannot be recomputed, and a figure that cannot be recomputed is not evidence.

## Provenance

Source: B3.2, priority raised from Won't to Should by AAU, then to Must after Metro's August revision
