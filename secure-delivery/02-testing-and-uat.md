# 02 — Testing and UAT

## Problem

A technically successful deployment can still fail if it does not meet business requirements, introduces defects or is not understood by the people expected to use it.

## Simple Explanation

Testing answers different questions at different stages.

A practical pattern is:

**Technical Validation → QA → UAT → Approval**

### Technical Validation

Does the solution work as designed?

### QA

Does the change behave consistently and meet defined quality expectations?

### UAT

Does the solution work for the business process and user requirement?

### Approval

Is the residual risk acceptable for release?

## Practical Pattern

### Define Acceptance

Before release, establish what success looks like.

This may include:

- functional requirements;
- integration behaviour;
- data quality;
- performance;
- security;
- business-process outcomes.

### Use Iterative Testing

Complex implementations may need multiple UAT cycles.

This is especially useful where requirements span multiple business units or user groups.

### Keep Defects Visible

Track:

- defect;
- severity;
- owner;
- status;
- workaround;
- release decision.

### Separate Defect from Enhancement

Not every improvement request is a release blocker.

A useful distinction is:

- defect;
- enhancement;
- known limitation;
- accepted technical debt.

## Example Implementation

A practical sequence can be:

**User stories → Demonstration → QA → UAT Cycle 1 → Remediation → UAT Cycle 2 → Acceptance**

This allows the business to see the solution evolve and reduces late surprises.

## Evidence Produced

- test plan;
- test results;
- defect register;
- UAT sign-off;
- known-issue register;
- release acceptance;
- training feedback.

## Control Alignment

Supports quality assurance, change control, business acceptance, secure delivery and implementation evidence objectives.

## Caveats

UAT should not become a substitute for technical testing.

Likewise, technical testing does not prove the business process works.

**Different test stages answer different questions.**
