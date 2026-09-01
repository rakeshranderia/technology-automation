# 04 — Operational Transition and Evidence

## Problem

A project can be technically complete but operationally unfinished.

Common gaps include:

- unclear ownership;
- missing support documentation;
- undocumented dependencies;
- no monitoring;
- no support model;
- project teams remaining the permanent escalation path.

## Simple Explanation

Delivery is not complete until the solution can be operated sustainably.

A useful pattern is:

**Build → Release → Stabilise → Transfer → Operate → Improve**

## Practical Pattern

### Operational Readiness

Before transition, confirm:

- service owner;
- technical owner;
- support path;
- vendor support;
- monitoring;
- backup/recovery;
- documentation;
- known issues;
- escalation.

### Documentation

Useful artefacts may include:

- as-built documentation;
- architecture;
- configuration;
- integration details;
- support procedures;
- runbooks;
- recovery instructions.

### Knowledge Transfer

Transition knowledge from:

- project team;
- developers;
- vendors;
- implementation partners;

to the team responsible for BAU.

### Hypercare

Use a defined stabilisation period where appropriate.

Hypercare should have an exit condition rather than becoming permanent BAU dependency.

### Post-Implementation Review

Ask:

- Did the change deliver the intended outcome?
- What failed or surprised us?
- What technical debt remains?
- What should change next time?

## Evidence Produced

- operational-readiness checklist;
- as-built documentation;
- support model;
- handover record;
- training material;
- known-issue register;
- post-implementation review.

## Control Alignment

Supports operational readiness, resilience, knowledge management, change closure, service management and continual improvement objectives.

## Caveats

Documentation should be usable, not simply complete.

A long document that nobody can follow during an incident is weaker than a concise runbook that is current and tested.

**The strongest transition is one where the project can leave without the service becoming dependent on the project team.**
