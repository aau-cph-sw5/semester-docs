# Architecture decision records

A short document per significant decision, recording what was chosen, what was
rejected, and why. Educado had no equivalent, and the absence shows: their
handover file describes what was built but rarely why, which is the part a
successor actually needs.

---

## Why bother

Three reasons, in ascending order of importance to you personally.

A team of six forgets its own reasoning within about a month. The person who
argued hardest for the approach graduates, and what remains is code that looks
arbitrary.

Three or four teams share each codebase. A decision made by one team is
encountered by the others as a constraint. A record turns "why is it like this"
into a two-minute read rather than an integration meeting.

**The oral examination asks about design choices and trade-offs.** Reading generated
or inherited code does not prepare you to answer. Having written down what you
rejected and why does. Of everything in this hub, this is the practice most
directly connected to your grade.

## When to write one

When someone in 2027 would look at the code and ask why.

Concretely: choosing a transport for real-time updates, choosing how offline state
reconciles, deciding whether presence is asserted or confirmed, choosing an
assurance level for an electronic signature, choosing a ranking approach, choosing
a database, deciding to depend on a third-party service, deciding to defer
something the backlog asked for.

Not for: naming a variable, choosing a linter rule, anything you would change
without a discussion.

Several backlog items require a decision record explicitly. If an item's
acceptance criteria mention an architecture decision record, it is not optional
and the reviewer should check for it.

## Where they live

In the product repository, at `docs/adr/`, numbered sequentially and never
renumbered.

```
docs/adr/
  0001-record-architecture-decisions.md
  0002-real-time-transport.md
  0003-offline-reconciliation.md
```

Use [templates/adr.md](../templates/adr.md). The first record in every product is
the one that says the product uses records, which sounds circular and is the
convention.

## Format

Short. One page. If it runs to three, the decision probably contains two
decisions.

**Status** is Proposed, Accepted, Superseded or Deprecated. Never delete a record.
When a decision changes, write a new record and mark the old one superseded, with
a link in both directions. The history of a decision is often more informative
than its current state.

**Context** describes the forces, honestly, including the constraints that had
nothing to do with engineering. "The dataset had not arrived and we needed
something to build against" is a legitimate and useful context.

**Decision** is one or two sentences in the active voice. "We will use server-sent
events for scenario propagation."

**Consequences** covers what becomes easier and what becomes harder. The second
half is the one people skip and the one a successor needs. A record with no
downsides listed reads as advocacy rather than a decision.

**Alternatives considered** is what separates a useful record from a note. What
else was on the table, and the specific reason it lost. A successor who disagrees
with the decision needs to know whether their preferred option was considered and
rejected, or never thought of.

## Reviewing them

Decision records go through the normal pull request process and get reviewed like
code. A reviewer from another team is the right reader: if the record does not
make sense to someone outside the team, it will not make sense to someone outside
the year.
