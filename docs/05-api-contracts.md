# API contracts

The single most important coordination artefact on this semester. Every product
has at least one interface that one team publishes and another consumes, and the
contract items are scheduled in sprint 1 for that reason.

---

## Why this document exists

The Metro user stories contain no dependencies. Not one of the 61 source stories
names another story it relies on, or an interface it shares. That is normal for
domain stories written by a partner, and it means the coordination layer has to be
introduced by us rather than found in the material.

The seams are real even though the source material is silent about them:

| Product | The seam | Who owns it |
|---|---|---|
| A | Scenario state and its real-time transport, shared by the steward mobile client and the control-room web client | Back-end team, jointly agreed |
| B | The positioning interface, and the event schema that defines what a completed patrol is | Back-end team |
| C | The lifecycle state machine and the signature primitive, used by every feature in the product | Back-end team |
| D | The query and result contract between the client and the ranking service | Back-end team, consumed by front-end |

Each of these is a backlog item in sprint 1 or 2. They are scheduled early
deliberately, before either side has built against them.

## What a contract is

A contract is a published, versioned description of an interface that another team
depends on. It is not the implementation, and it is not documentation written
afterwards. It exists before the implementation and it survives it.

A contract has four parts.

**A machine-readable schema.** OpenAPI, JSON Schema, protocol buffers, TypeScript
types, whatever suits the stack. Both sides validate against it in their tests, so
that drift is a test failure rather than a discovery.

**Prose that explains the parts a schema cannot express.** What the field means in
operational terms, what happens when it is absent, what the caller should do when
the call fails. A schema says a field is a string; only prose can say that the
string is a Danish station identifier and that it is not the same as the display
name.

**A version.** Increment it on any breaking change. A change is breaking if a
consumer that was working stops working.

**A stub.** A fake implementation the consuming team can build against before the
real one exists. This is what makes it possible for two teams to work the same
sprint rather than one waiting for the other.

## Where contracts live

In the product repository, in a top-level `contracts/` directory, with the version
in the path.

```
contracts/
  scenario-state/
    v1/
      schema.json
      README.md
      CHANGELOG.md
```

Not in the back-end service's source tree. A contract that lives inside one side's
implementation belongs to that side, and it stops being a shared artefact.

## Changing a contract

The rule is short. Announce at the integration meeting before merging, version any
breaking change, and both teams adopt within the same sprint.

In practice:

Open an issue describing the change and who it affects. Raise it at the
integration meeting; do not merge a breaking change that has only been discussed
in a pull request comment, because the affected team may not be watching that
repository. Publish the new version alongside the old one where you can, so that
consumers migrate rather than break. Record the change in the contract's changelog
with a date and a reason. Delete the old version only once every consumer has
moved, and say so at the integration meeting.

An additive change, a new optional field, is not breaking and does not need a new
version. It still needs the changelog entry.

## Conventions

These apply to every product unless a product's architecture decision record says
otherwise and explains why.

**Resources are nouns and plural.** `/stations`, `/scenarios`, `/restrictions`.

**Use the HTTP verbs as intended.** GET never changes state. A GET that changes
state will eventually be retried by something and will surprise everybody.

**Return the right status.** 200 for success, 201 with a location for creation, 400
for a request the client can fix, 401 for not authenticated, 403 for authenticated
but not permitted, 404 for absent, 409 for a conflict with current state, 422 for
semantically wrong but syntactically valid, 500 only for something genuinely
unexpected.

**Errors carry a code from [06-error-codes.md](06-error-codes.md)** and a message
intended for a developer, not a user. Interface text for users is chosen by the
client, in the user's language.

**Time is UTC in ISO 8601, with an offset.** The metro runs through the night and
across a daylight-saving change; local time in an API will produce a wrong
compliance figure exactly once a year and nobody will understand why.

**Pagination on anything that can grow.** The Destination ID catalogue has
hundreds of entries and the event logs have no natural bound.

**Never put personal or sensitive data in a URL.** Query strings end up in logs, in
browser history and in referrer headers.

## What we did not adopt

Educado carried a 93,000-character copy of Microsoft's REST API guidelines. It is
a good document and almost nobody reads a document that long, which is visible in
the fact that their own README describes it as somewhere to look "if you are
unsure if your routes follow the guidelines".

The conventions above are the subset that matters for these four products. If you
want the full treatment, the Microsoft guidelines are public and worth an hour
once. The conventions here are the ones you will be held to.
