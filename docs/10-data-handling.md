# Handling Metro Service material

Read this before you touch anything Metro gave us. It is short, and getting it
wrong has consequences outside the university.

There was no equivalent document in the Educado material, because Educado had no
industry partner supplying operational data. This semester does.

---

## The one rule

**Nothing Metro Service gave us goes into git.**

The repositories are public. That is deliberate: the collaboration framework
commits all student code to the MIT licence, and public repositories are what give
the free plan its full feature set. It also means anything committed is
permanently readable by anyone, and force-pushing does not undo that.

Concretely, none of these are ever committed:

The alternative-operation scenario presentations. The station layout data and the
beacon identifier mapping. The Destination ID spreadsheets and the behaviour
images. The written Operational Restriction procedure and the paper form. Any
existing compliance report. Photographs taken inside the control room or on a
station. Anything else Metro sends that is not obviously already public.

## What to do instead

Keep Metro material in the shared drive your Product Owner nominates, outside the
repository. Add the file patterns to `.gitignore` on day one, before anyone has a
chance to be careless.

In the repository, refer to it. A backlog item can say it needs the station layout
data without containing it. An import script can read from a path that is
configured rather than committed.

Commit **synthetic fixtures** instead: data with the same shape, invented. Every
product needs these anyway, because the tests cannot depend on files nobody outside
the team has. A synthetic station layout with the right structure is more useful
to a test than the real one.

If you need a small excerpt to make a point in documentation, ask the Product
Owner first. Section 7 of the framework requires Metro's prior approval for each
instance of their material appearing in student work, and the Product Owner is the
route to that approval rather than each team asking separately.

## Personal data

**Case B runs on synthetic steward identities for the whole semester. No personal
data about any Metro employee is transferred to AAU.**

This is a decision, not an oversight. Section 5 of the collaboration framework does
not authorise personal data transfer and requires a separate Data Processing
Agreement first. Running on invented stewards keeps the ethical and technical
substance of the case completely intact, and keeps a legal instrument off the
critical path in September.

So: invent your stewards. Give them names that could not be mistaken for real
staff. If someone offers you a real shift log, decline politely and tell your
Product Owner.

The same caution applies more broadly. If any product ends up handling something
that identifies a person, raise it before you build it.

Note that `MET-B-022`, the data-protection statement, is a student deliverable and
a genuine piece of the work. It is not the legal agreement between AAU and Metro
Service. Do not let one be mistaken for the other; the statement itself should say
so.

## Confidentiality

Section 9 of the framework covers confidential information in both directions.
Practically, for a student:

Do not post Metro material in a public forum, a Discord server, a blog post or a
social media thread, including screenshots.

Do not paste Metro material into an external service. This includes AI assistants;
see [11-ai-use.md](11-ai-use.md), which is specific about it.

Your project report may describe the work. What it may include of Metro's material
needs the Product Owner's approval, and asking in November is much easier than
asking on the last day.

## The ethical framing of Case B

Case B documents where night-shift stewards are and what they patrol. Metro
attached a condition to the case when it was scoped: it is to be framed as a tool
that helps stewards evidence work they already do and helps management meet a
contractual obligation, not as monitoring.

That framing is not a slogan to put in the report. It shows up in design decisions.
It is why the steward can see their own record. It is why the transparency view
exists. It is why the question of who may see an individual record, as opposed to
an aggregate, is treated as a blocking question rather than an implementation
detail.

Metro will provide a written ethical guidelines document after the summer
vacation. When it arrives, read it, and revise the design where it disagrees with
what you assumed.

## If something goes wrong

If Metro material reaches the repository, tell your Product Owner immediately.
Do not quietly force-push. The response depends on what it was and who might have
seen it, and that is a judgement for the Product Owner and Metro rather than for
the team.

Nobody will be in trouble for an honest mistake reported quickly. The same mistake
discovered in December is a different conversation.
