# Environments and continuous integration

Educado's `DEVOPS.md` was a definition of DevOps quoted from Microsoft followed by
three empty headings. This replaces it with the things a team on this semester
actually has to decide and run.

---

## Branches and what they mean

```
main          protected. Only what has been demonstrated at a sprint review.
staging       integration. Every team's work together. Should always run.
development   the shared working branch. Feature branches merge here.
feature/*     one per backlog item, named for it.
```

`development` is where the teams meet. `staging` is where you find out whether
they meet successfully. `main` is the record of what has been shown to the
partner, which makes it the branch a supervisor or an examiner will look at.

Protect `main` and `staging`. At minimum: no direct pushes, pull request required,
at least two approving reviews, and the pipeline must be green.

## What the pipeline must do

By the end of sprint 1, every product repository runs, on every pull request:

Install and build. If it does not build, nothing else matters.

The full test suite. A red pipeline means the pull request does not get reviewed,
so the suite has to be trustworthy; see [04-testing.md](04-testing.md) on
flakiness.

A linter and formatter check. Machines should catch formatting so that humans can
spend review on design.

Ideally, though not required in sprint 1: a static analysis or code quality pass,
and a build of the deployable artefact.

Keep it under five minutes if you can. A pipeline slower than a coffee break stops
being part of the loop and becomes something people work around.

## Environments

Three, and only the first two need to exist in sprint 1.

**Local.** Every developer. The README brings it up from a clean clone with no
tribal knowledge. Test this by giving the README to somebody on another team.

**Staging.** One per product, shared by its teams, deployed from `staging`. This is
where the sprint review demonstration happens. It needs seeded data that makes the
product demonstrable, which for these four products means synthetic data rather
than anything Metro supplied. See [10-data-handling.md](10-data-handling.md).

**Demonstration.** Optional. Some teams prefer to demonstrate from staging, some
prefer a frozen build so that a colleague's merge cannot break the demonstration
ten minutes before it starts. The second is the safer choice for a review with the
partner present.

There is no production environment. These are prototypes and Section 11 of the
collaboration framework is explicit that they are not warranted for production use.
Nothing here should be deployed anywhere a member of the public or a Metro
operator could reach it.

## Configuration and secrets

Configuration comes from the environment, never from a committed file. Commit a
`.env.example` listing the names of every variable with a comment on what it is
for, and never the values.

Secrets go in GitHub Actions secrets or the equivalent. Never in the repository,
never in a comment, never "temporarily". The repositories are public: a secret
pushed to one is compromised the moment it lands, and rewriting history does not
undo that. If it happens, rotate the secret first and clean the history second.

Enable secret scanning and push protection on each product repository. It is free
on public repositories and it will save somebody's evening.

## Databricks

The collaboration framework mentions a sandboxed Databricks environment provided
by Metro Service. As things stand it is not on the critical path: the datasets the
products need are files, and the products are ordinary web and mobile
applications, which Databricks is not designed to host.

If that changes, it changes by written agreement with Metro rather than by a team
deciding to try it. Section 6 of the framework requires prior written approval
before anything of ours runs on their platform.

## Definition of done, from this document's side

A change is not done until the pipeline is green on the shared branch, not just on
the feature branch. "It passed on mine" is the beginning of an investigation, not
the end of one.
