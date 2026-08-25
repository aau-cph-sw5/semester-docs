# Assessment

What you are graded on, and how the work on the board relates to it.

Read this in week one. Most of what goes wrong here goes wrong early: a team
spends thirteen weeks producing a good product and three days producing a report
that cannot show why any of it was a reasonable thing to do.

---

## The modules

The 5th semester is 30 ECTS: one project module of 15 and three courses of 5.

| Module | Code | ECTS | Examination | Censorship |
|---|---|---|---|---|
| Kompleks Front-end Software | DSNSWCB520 | 15 | Oral, on the basis of the project | Internal |
| Kompleks Back-end Software | DSNSWCB521 | 15 | Oral, on the basis of the project | Internal |
| Agil software engineering | DSNSWCB512 | 5 | Written or oral | External |
| Maskinintelligens | DSNSWCB513 | 5 | Written or oral | Internal |
| Databasesystemer | DSNSWCB514 | 5 | Written or oral | Internal |

You take one of the two project modules. The three courses are examined
separately and on their own terms; this page is about the project module.

The authoritative source is the study regulation, *Studieordning for
bacheloruddannelsen i software, 2020, København*, together with the module
description for your project module. **Read the module description.** It contains
the knowledge, skills and competence objectives your examiner works from, and
this page does not reproduce them. Ask your supervisor for it in week one if you
cannot find it.

---

## What the examination actually is

An oral examination on the basis of the project, which means the report and the
software are the subject of a conversation rather than the thing that is marked
in your absence. Two consequences follow, and they are the whole of the advice on
this page.

**You are examined individually.** The team submits together and the grade is
individual. You answer for what you did, and for the parts you did not do you
answer for understanding them. A team that divides the work so cleanly that
nobody can speak about anybody else's half is a team that has organised itself
into a bad examination.

**You are examined on judgement, not on output.** A working feature earns
nothing on its own. What earns is being able to say what problem it solves, what
else you considered, why you chose this, how you know it works, and what you
would do differently. The backlog is deliberately written so that the interesting
choices are still yours: see any item whose acceptance criteria require a
decision to be recorded rather than a particular design to be built.

---

## What you submit

| Deliverable | What it is | Where it is described |
|---|---|---|
| Project report | The academic document. Problem, method, design, results, discussion. | Your module description and your supervisor |
| Software | The product repository at the end of sprint 7 | Your product's README |
| Architecture decision records | One per decision a stranger would question | [08-architecture-decisions.md](08-architecture-decisions.md) |
| AI use declaration | What you used an assistant for and what you can explain without it | [11-ai-use.md](11-ai-use.md) |
| Handover package | What the 2027 cohort inherits | [13-handover.md](13-handover.md) |

The handover package is graded work rather than a favour to next year, and
[13-handover.md](13-handover.md) explains why.

---

## Backlog work and the report

The report is not a feature log. A 5th-semester project at AAU is a
problem-based piece of work, which means it opens with a problem the team has
formulated and defended, not with a list of what the client asked for. The
backlog gives you the client's side of that. The problem is still yours to state.

Three places where the two connect, concretely.

**Problem formulation.** The backlog is a set of items Metro Service wants.
Your problem formulation says what question your team is answering by building
them, for whom, and why it is worth answering. Two teams on the same product
should be able to write different problem formulations and both be right. The
material in [00-what-we-inherited.md](00-what-we-inherited.md) and in your
product's backlog header, in particular the AAU evaluation of the case, is where
to start looking for the tension worth writing about.

**Method and results.** Several items are measurements rather than features, and
they exist to give the report something that can be reported rather than
asserted. `MET-A-020` measures the scenario suggestion against expert-labelled
examples with a trivial baseline for comparison. `MET-A-027` is a usability
evaluation under time pressure. `MET-B-016` evaluates a forecast against
held-out shifts. `MET-D-018` and `MET-D-019` do the same for Case D. If your
product carries one of these, it is the natural spine of the results section:
a stated hypothesis, a method someone else could repeat, a number, and an honest
discussion including the case where the baseline wins.

**Discussion.** The open questions in [CLARIFICATIONS.md](../CLARIFICATIONS.md)
are not administrative debris. Each one is a place where the team had to proceed
on an assumption, and the assumptions you made and how you managed the risk of
being wrong are exactly what a discussion section is for. Record them as you go.
Reconstructing them in December from a git history is miserable and it shows.

---

## What this page does not tell you

It does not give weights between the report and the software, or between the
individual and the group component. Those come from the module description and
your examiner, not from this repository. If anyone tells you a percentage, ask
them where they read it.
