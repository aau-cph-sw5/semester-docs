# Onboarding

The first week. Work through this in order; most of it is quick, and the parts
that are not are the parts that block everything else.

---

## 0. Who is who

Four roles are named throughout these guides. They are different people and they
answer different questions.

| Role | Who | What they are for |
|---|---|---|
| **Semester coordinator** | *(name, email)* | The semester as a whole: structure, cases, teams, anything that affects more than one product |
| **AAU Product Owner** | *(name, email; one per product)* | Your single route to Metro between reviews, backlog priority and refinement, organisation access |
| **Team supervisor** | *(assigned at semester start)* | Your team's technical and academic guidance, and the person who answers questions about the report and the examination |
| **Metro domain expert** | Karsten Juhl, kju@metroservice.dk | Questions about how the metro actually works, and only those |

*This table is filled in before the semester starts. If you are reading it with
the names still missing, ask at the first lecture and it is a bug in this
repository.*

The Product Owner appears first because organisation access runs through them:
they invite you to `aau-cph-sw5` and without that nothing else in this guide
works.

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
- [ ] I have read [14-assessment.md](14-assessment.md) and I know what the examination assesses

## 6. Track-specific notes

**Read this first: teams work full-stack.** Your project module is either
*Kompleks Front-end Software* (DSNSWCB520) or *Kompleks Back-end Software*
(DSNSWCB521), and in practice almost every team builds across the whole product
rather than splitting along that line. The `track:` label on an item says where
the work sits in the system, not who is allowed to do it, and it is there to help
a team distribute work and spot dependencies between teams.

What follows from that is the one thing to take seriously: at an oral examination
you answer for what you personally did and can justify. So make sure that over the
semester you have worked on, and can defend, something substantial on the side of
the system your module names. Nobody will stop you doing the rest, and you should.

**Front-end work.** Every product has a control-room web surface. Case A and
Case B also have an Android surface for stewards, and Case B is the most
back-end-heavy of the running products: if the interface is what you came for, know
that before you choose it.

**Back-end work.** Somebody owns the contracts. Every product has at least one
interface that another team consumes, and the contract items are scheduled in
sprint 1 for that reason. Publish it early even if it is wrong; a wrong contract
that everyone can see is worth more than a right one in your head.

**Machine Intelligence (DSNSWCB513).** In Case A this is now a Must, not a
garnish: `MET-A-019` turns a free-text incident description into a ranked
shortlist of scenarios, and `MET-A-020` measures it against expert-labelled
examples. Cases B and C carry optional forecasting and drafting items. No external
model is supplied. You build and measure the method yourself, against a labelled
set and a deterministic baseline, and the measurement is the deliverable as much
as the method is. Start with the baseline. It guarantees a working product and it
is the control condition you compare against.

## 7. What good looks like by the end of sprint 1

Not much code, and that is correct. By the end of the first sprint a healthy
product has: a repository anyone can run, a published interface contract between
the teams, a domain model derived from something real rather than imagined, one or
two small items genuinely finished, and a written list of the questions the team
could not answer. Teams that spend sprint 1 writing features usually spend sprint
3 deleting them.
