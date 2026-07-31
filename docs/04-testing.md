# Testing

What to test, when, and to what standard. The stack-specific parts of the Educado
guidelines have been generalised, because the four products choose their own
stacks; the discipline underneath has not changed.

---

## Why this matters more than usual here

Three or four teams share each codebase. Your tests are how another team finds out
they broke something you built, before a reviewer has to notice it by reading.
Without tests, a shared codebase degrades into a set of areas nobody dares touch.

There is also an examination consequence. At the oral defence you will be asked
how you know your system behaves as claimed. A test is an answer to that question.
An assertion is not.

## What to test

**Test behaviour, not implementation.** A test that breaks when you rename a
private function is a liability. A test that breaks when the patrol coverage rule
changes is doing its job.

**Test the acceptance criteria.** Every item's criteria were written to be
testable. If a criterion cannot be expressed as a test, either it is a usability
question that needs a protocol with participants, or it was written badly and
should be fixed.

**Test the boundaries.** For the compliance items, that is exactly 70 percent, the
hour boundary, the duplicate observation, the observation that arrives out of
order. Most defects on this kind of system live at boundaries rather than in the
middle.

**Test what happens when something is absent.** The network, the ranking service,
the image for a catalogue record, the beacon. Every product has degraded-mode
items and they are worthless untested, because the whole point is behaviour under
conditions you cannot reproduce by hand.

**Before you change inherited code, characterise it.** Write tests that document
what it currently does, including the parts that look wrong, then change it. This
is the technique that makes refactoring safe, and it will matter enormously to the
2027 cohort.

## What not to test

Framework behaviour. Third-party libraries. Getters. Anything where the test is a
restatement of the implementation.

A test suite that takes ten minutes and that nobody runs is worth less than a
suite that takes ninety seconds and everybody runs.

## Structure

Whatever the framework, the shape is the same and it is worth being strict about.

**Arrange, act, assert**, in that order, visibly separated. A test that mixes them
is hard to read at speed, and tests are read far more often than they are written.

**One behaviour per test.** When it fails you should know what broke from the name
alone, without opening the file.

**Names that describe the behaviour and the expectation.** Not
`test_patrol_coverage`, but `overdue_when_no_patrol_within_the_rolling_hour`. The
name is what a reviewer reads in a failing pipeline at eleven at night.

**Set-up in the appropriate hook.** Expensive shared set-up once per suite,
per-test state before each test. Tests that depend on the order they run in are
worse than no tests, because they fail unpredictably and teach people to ignore
red pipelines.

## Levels

**Unit tests** for logic: the compliance computations, the ranking, the state
machine transitions, the derived state. These are where most of your tests should
be, and they are cheap.

**Integration tests** for the seams: does the client actually satisfy the contract,
does the import survive a malformed row, does the queue deliver exactly once.

**End-to-end tests** sparingly, for the two or three journeys that define the
product. They are slow and brittle and they catch things nothing else catches.
Choose them deliberately: for Case A, activating a scenario and having a steward
see it; for Case D, describing a service and confirming a Destination ID.

**Evaluation** is a form of testing specific to the items with a ranking,
classification or forecasting component. It is not pass or fail; it produces a
number over a labelled set, compared against a deterministic baseline, reproducible
from one command. Report the number honestly at the sprint review, including when
the baseline wins. See the evaluation items on each backlog.

## Continuous integration

Every product repository runs its tests on every pull request by the end of sprint
1. A pull request whose pipeline is red does not get reviewed.

If the pipeline is flaky, fix the flakiness rather than re-running it. A suite
people re-run until it passes is a suite people have stopped believing.

## Coverage

There is no coverage target on this semester, deliberately. Coverage numbers are
easy to reach and easy to game, and a team optimising for a percentage writes
tests for the code that is easy to test rather than the code that is risky.

Instead: the acceptance criteria are tested, the boundaries are tested, and the
things another team could break are tested. If you want a number to look at, look
at whether the tests would fail if you deleted a line of logic at random.

## Test documentation

Educado kept a separate test documentation file, and it went stale within a
semester; their own README admits it covered only the back end and was out of
date. We are not repeating that. The tests are the documentation. What belongs in
prose is only what the tests cannot say: which behaviours are deliberately not
covered and why, where the fixtures came from, and how to run the evaluation.

Put that in the product repository's README, next to the command that runs them.
