# Handover

What the 2026 cohort owes the 2027 cohort, and why it is graded rather than
optional.

Adapted from Educado's `FEATURE_PROGRESS.md`, which existed for exactly this
reason and says so in its own description: it was written "to give a better
overview of the current state of the product, when the new students are inheriting
the project."

---

## Why this is a graded deliverable

The 5th semester is designed around inherited code. Reading code you did not
write, working out why it is as it is, and deciding what to change and what to
leave alone is the part of software engineering that resists being produced by
prompting a tool.

The 2026 cohort has nothing to inherit. Metro's four cases are all greenfield.

So the objective is inverted for this year only. You do not inherit a system; you
build the one that will be inherited, and you are assessed on how well it can be.
Every product's backlog carries an inheritance item as a Must, defended at the
oral examination and weighted in the assessment. The collaboration framework runs
to January 2029, so the 2027 and 2028 cohorts get the experience the semester was
designed for, and yours is the work that makes it worth having.

That is a better position than apologising for an absence, and it is worth taking
seriously from sprint 1 rather than discovering in sprint 7.

## What has to exist by the end

**A repository that runs from a clean clone.** Following the README alone, with no
tribal knowledge, verified by somebody outside the team. This is the single most
common failure and the easiest to test for.

**Architecture decision records** for every choice a newcomer would question. See
[08-architecture-decisions.md](08-architecture-decisions.md). The records that
matter most are the ones where you chose between two reasonable options, because
those are the ones a successor will otherwise re-litigate from scratch.

**Interface contracts with their version history intact.** Do not tidy the
changelog. The fact that a contract went through three versions in five sprints is
information.

**Characterisation tests** over anything a successor might want to refactor. A test
that documents current behaviour, including behaviour you suspect is wrong, is
what makes change safe for somebody who does not yet understand the system.

**A glossary contribution.** Every term your team had to ask about goes into
[12-glossary.md](12-glossary.md). You will not remember which ones were hard by
December, so add them as you meet them.

**The handover note.** See below.

## The handover note

One document per product, written in sprint 7, using
[templates/handover-note.md](../templates/handover-note.md). It is the thing a
successor reads first, and it should be honest in a way that project reports
usually are not.

Six sections.

**What works.** Feature by feature, with the state you would defend. Not what was
attempted.

**What does not.** Known defects, half-finished work, anything that looks complete
and is not. This section costs you nothing and saves a successor a fortnight. A
handover with an empty "does not work" section is not believed by anybody who has
inherited a codebase before.

**What was cut, and why.** Which backlog items were dropped, and whether they were
dropped because they were unnecessary, because they were blocked, or because you
ran out of sprints. These are three different messages to a successor.

**What is still blocked on Metro.** Which questions were never answered, what you
assumed instead, and where that assumption is embedded in the code. This is the
section most likely to prevent a successor from building on sand.

**Where the bodies are buried.** The module everyone avoided. The workaround that
should be a fix. The test that is skipped. The thing that only works because of an
accident. Write it down; you know what it is.

**The three things to do first.** If you had two more sprints, what would you do
with them, in order. You have more context for this judgement than anyone who comes
after you will have for a month.

## During the semester, not at the end

The handover note is written in sprint 7, but it is impossible to write well from
memory. Two habits make it easy.

Keep a running note in the product repository from sprint 1 and add to it whenever
you find something a successor should know. Four lines after each retrospective is
enough.

Write the architecture decision record when you make the decision, not when you
document the project. The reasoning is available for about a week and then it is
reconstruction.

## For the 2027 cohort reading this

If you are inheriting this: start with the handover note, then the decision
records, then the tests, then the code. The backlogs in this repository are the
original intent, and comparing them against what exists will tell you a great deal
about what happened.

Treat the previous cohort's decisions charitably. They had constraints you cannot
see, several of which are recorded in the decision records and several of which
are not. Then change what needs changing, and record why.
