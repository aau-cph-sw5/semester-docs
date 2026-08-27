> **Emergency Scenarios (Case A)** · Epic A-EP3: Shared situational overview

**Size** S · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** feature · **Proposed sprint** 3

## User story

As a Control Room Operator, I want a required station with no steward to be identified as a gap, so that I can see what still needs staffing without working it out myself.

## Context

The source document treats gap indication as a presentation concern inside A1.2 and A2.2. It is a derivation over reported state and belongs server-side so that both surfaces agree on what a gap is.

## Acceptance criteria

- [ ] Station state is derived server-side as one of required-uncovered, en-route, covered, or not-required, and both clients render the same derived value.
- [ ] A station whose only steward report is stale is treated as uncovered rather than covered.
- [ ] The derivation rules are documented, and a change to them requires a change to one place only.

## Dependencies

- Requires A-003.

## Open questions

- **[Answered · Metro, August 2026]** Does a station with a steward en route count as covered? **No. Three states, given as colours: a vacant station is red, a manned station is green, a station with a steward on route is yellow.** The four derived states in the acceptance criteria already carry this and the answer fixes their meaning: en route is its own state, so it neither counts towards coverage nor reads as a gap, and the operator sees evidence and intent side by side rather than one number. One confirmation is outstanding, because the short answer reads *Covert* while the colour scheme describes three distinct states; the colour scheme is what we have taken as the answer.

## Provenance

Source: A1.2, A2.2
