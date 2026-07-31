# Using AI assistants on this project

Most of you will use an AI coding assistant this semester. That is expected and it
is not discouraged. This document says what it changes and what it does not.

Two things it does not change: what you have to be able to explain, and what you
are allowed to send outside the university.

---

## Two different things, often confused

**AI as a development aid.** You use an assistant to write, explain or review
code. Your choice, your tool, your subscription. Nothing is supplied by the
semester and nothing is required.

**AI as a product component.** The system itself does ranking, classification or
forecasting. Three of the four products have items like this.

**No external model is supplied for the second.** The Mistral integration named in
Metro's original user stories is not part of this semester. Where a source story
assigned work to an assistant, the backlog item has been rewritten as something
you implement and measure. This is not a limitation to work around: a component
built on somebody's personal API key is a component that stops working when they
graduate, and a component nobody measured is a component nobody can defend at an
examination.

If you think a product genuinely needs a language model to work, raise it with
your supervisor before building it. Do not wire in a personal key.

## What you have to be able to explain

**Everything in the pull request with your name on it.**

At the oral examination you will be asked why the code is the way it is: what you
chose, what you rejected, what happens at the boundaries, what breaks if a
dependency is slow. The examiner is testing understanding of design and trade-offs,
not typing. Code you cannot explain is worth less to you than code you wrote badly
and understand.

The practical test before you open a pull request: could you defend every line of
this to a reviewer from another team, right now, without looking anything up? If
not, you are not finished reading it.

This also matters to the person reviewing you. Two reviewers, one from another
team, are spending their time on your work. Submitting something you have not
understood spends their time badly.

## Confidentiality

**Do not paste Metro Service material into an AI assistant.**

Not the Destination ID spreadsheet, not the station layouts, not the scenario
presentations, not the restriction procedure, not a photograph from the control
room. Most assistants are external services, and Section 9 of the collaboration
framework treats this material as confidential. Sending it to a third party is a
disclosure whether or not anything visible happens.

Your own code is a different matter and is fine, with one caution: not if it
contains a secret, and not if it embeds Metro material in fixtures or comments.
Synthetic fixtures are safe by construction, which is one more reason to use them.

If you are unsure whether something counts, ask the Product Owner rather than
guessing. The answer takes a minute.

## Where assistants help on this semester, and where they do not

Worth using: explaining an unfamiliar part of the codebase, first drafts of tests,
boilerplate, translating between languages or frameworks, rubber-ducking a design
you already understand, and improving prose in your report.

Be careful: anything touching the domain. An assistant does not know what a
Destination ID is, what makes a patrol complete, or why concourse and platform are
counted separately. It will produce something plausible and confidently wrong, and
plausible-and-wrong is the most expensive failure mode on a project where the
domain is the hard part. The same applies to the compliance rules, the signature
lifecycle, and anything with a Danish operational term in it.

Also be careful with generated tests. An assistant will happily write a test that
asserts what the code currently does, which passes and proves nothing. See
[04-testing.md](04-testing.md) on tests that cannot fail; it is the same defect
that afflicted the original Metro acceptance criteria.

## Disclosure

Two lines in your product's README, kept current:

Which assistants the team used, and for what kinds of work. One sentence is
enough: "GitHub Copilot for autocompletion, Claude for test drafts and for
explaining the inherited scheduler."

Anything generated that the team did not substantially rewrite, if there is such a
thing, identified so the next cohort knows.

This is not a confession. It is the same courtesy as citing a library. The 2027
cohort inherits this code and it is useful for them to know how it came about.

## Where the boundary is

AAU's institutional position on AI in coursework is still developing, and this
document will be revised when it settles. What is stated here is the expectation
for this semester, and it is deliberately conservative in one direction only: you
own what you submit.

Using an assistant is not misconduct. Submitting work you cannot explain is a
problem regardless of how it was produced, and it was a problem before assistants
existed. The examination has always tested whether you understand what you built.
That has not changed; only the ease of producing something you do not understand
has.

If you are unsure whether a particular use is acceptable, ask before rather than
after. Nobody has ever been penalised for asking.
