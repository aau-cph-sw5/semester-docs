# Onboarding

The first week. Work through this in order; most of it is quick, and the parts
that are not are the parts that block everything else.

---

## 1. Access

| What | How | Blocked without it |
|---|---|---|
| GitHub account | Your own, or a new one. Use a name a supervisor can recognise. | Everything |
| Organisation membership | Your Product Owner invites you to `aau-cph-sw5` | Everything |
| Team membership | Assigned at semester start; gives write access to your product repository | Pushing code |
| Product board | Visible to all organisation members | Sprint planning |

If your GitHub username is not obviously you, put your real name in your profile.
Reviewers from other teams need to know who they are talking to.

## 2. Your product

You are on one of four products. Read, in this order:

1. The product's entry in the [backlog](../backlog/), start to finish. It is
   twenty minutes and it is the single highest-value thing you will read.
2. The **minimum demonstrable product** section at the top of that backlog. Those
   are the items that have to work by the middle of the semester. Everything else
   is negotiable.
3. The product's open questions in [CLARIFICATIONS.md](../CLARIFICATIONS.md).
   Knowing what is not yet known is as useful as knowing what is.

## 3. The domain

The metro is not a domain any of us know. Two hours spent here saves a fortnight.

Read [12-glossary.md](12-glossary.md) and keep it open. Danish operational
vocabulary appears constantly and guessing is expensive.

Ask, at the first sprint review, for anything in your product's backlog you do not
understand. The Metro domain experts would far rather answer a naive question in
September than see the wrong thing demonstrated in November.

If a site visit is arranged, go. Students who have seen the control room design
differently from students who have not.

## 4. Your environment

The stack is chosen per product by the teams on it, and recorded in an
architecture decision record in the product repository during the first sprint. If
you arrive after that decision, read the ADR rather than asking.

Whatever the stack, three things are expected of every product repository by the
end of sprint 1:

A new developer can clone the repository and get the system running by following
the README alone. Not by asking someone. Test this by handing the README to
someone on another team and watching them fail.

Tests run with a single command.

The repository has a `.gitignore` that covers the stack, and nothing in the
history that should not be there.

## 5. First-week checklist

- [ ] I can push a branch to my product repository
- [ ] I have read my product's backlog from start to finish
- [ ] I know which items form the minimum demonstrable product
- [ ] I know which items in my product are blocked, and why
- [ ] I have read [10-data-handling.md](10-data-handling.md) and I know what must never be committed
- [ ] I have read [11-ai-use.md](11-ai-use.md) and I know what I have to be able to explain at the exam
- [ ] I have read [03-pull-request-process.md](03-pull-request-process.md)
- [ ] I can run the project locally and its tests pass
- [ ] I have met the other teams on my product, by name
- [ ] I know who my Product Owner is and how to reach the Metro contact

## 6. Track-specific notes

**Front-end track (DSNSWCB520).** Two of the four products carry both a web
surface and a mobile surface. Whether a mobile-only deliverable satisfies the
module's learning objectives is a question for your supervisor, not for the team,
and it is worth asking in week one rather than week fourteen.

**Back-end track (DSNSWCB521).** You own the contracts. Every product has at least
one interface that another team consumes, and the contract items are scheduled in
sprint 1 for that reason. Publish it early even if it is wrong; a wrong contract
that everyone can see is worth more than a right one in your head.

**Machine Intelligence (DSNSWCB513).** Three products have items that involve
ranking, classification or forecasting. No external model is supplied. You build
and measure the method yourself, against a labelled set and a deterministic
baseline, and the measurement is the deliverable as much as the method is. Start
with the baseline. It guarantees a working product and it is the control condition
you compare against.

## 7. What good looks like by the end of sprint 1

Not much code, and that is correct. By the end of the first sprint a healthy
product has: a repository anyone can run, a published interface contract between
the teams, a domain model derived from something real rather than imagined, one or
two small items genuinely finished, and a written list of the questions the team
could not answer. Teams that spend sprint 1 writing features usually spend sprint
3 deleting them.
