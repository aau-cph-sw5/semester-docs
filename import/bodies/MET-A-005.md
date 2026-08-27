> **Emergency Scenarios (Case A)** · Epic A-EP9: Offline and degraded operation

**Size** L · **Priority** Must · **Readiness** Ready · **Track** mobile · **Type** feature · **Proposed sprint** 3

## User story

As a Steward, I want the active scenario, my own assignment and the response checklist to stay readable when I have no signal, so that I am not worse off in a tunnel than I was with the document I used before.

## Context

No story in the source document addresses loss of connectivity, and the words offline, connectivity, degraded, unavailable and timeout do not appear in it. Stewards work on platforms, in tunnels and on moving trains. The artefact this product replaces has the property of working without a connection, so a replacement that does not is a regression in exactly the circumstances the product exists for.

## Acceptance criteria

- [ ] With the device in flight mode, opening the application displays the last synchronised scenario, the steward assignment and the response checklist.
- [ ] The time at which the local copy was last synchronised is displayed whenever the client is not connected.
- [ ] Content served from the local copy is distinguished from live content by a persistent visual indicator.
- [ ] A local copy older than the agreed staleness period displays its age prominently rather than presenting itself as current.
- [ ] The scenario content required offline is bounded and stated, so that the local store cannot grow without limit.

## Dependencies

- Requires A-003.
- The staleness period requires confirmation from Metro.

## Open questions

- **[Answered in part · Metro, August 2026]** After how long should a locally held scenario be treated as untrustworthy? **Answered in part, and the sentence stops mid-way.** What Metro gives us is the useful half: the radio stays in use throughout, so the steward remains aware of the general situation and the phone is not the only channel. A stale local copy is therefore a degradation rather than a hazard, which argues for showing the age of the held scenario prominently and continuing to work, not for locking the screen. The threshold itself is still unanswered and has been put back to Metro.

## Provenance

Source: AAU-added. The most consequential gap in the source document.
