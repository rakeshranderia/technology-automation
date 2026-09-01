# 03 — Change, Release and Cutover

## Problem

Good solutions can fail during deployment if dependencies, timing, rollback, communications and ownership are not managed.

## Simple Explanation

Release is not simply the act of moving code or configuration into production.

It is the controlled transition from a known pre-change state to an approved post-change state.

A practical pattern is:

**Plan → Approve → Release → Validate → Stabilise → Close**

## Practical Pattern

### Plan

Identify:

- scope;
- dependencies;
- implementation sequence;
- outage requirements;
- business impact;
- rollback or recovery options;
- communications.

### Approve

Material changes should have clear approval based on risk and business impact.

### Release

Use a controlled release path rather than ad hoc production change.

### Validate

Confirm:

- core functions;
- integrations;
- data;
- security;
- monitoring;
- user access.

### Stabilise

Use hypercare where the change is complex or business-critical.

### Close

Capture:

- outcome;
- issues;
- lessons;
- unresolved actions.

## Cutover

For larger programs, cutover should coordinate technical and business activities.

Useful elements include:

- cutover plan;
- owners;
- timings;
- go/no-go criteria;
- rollback decision points;
- vendor coordination;
- business communications.

## Evidence Produced

- approved change;
- release plan;
- cutover plan;
- deployment log;
- validation results;
- issue log;
- go-live approval;
- rollback decision if required.

## Control Alignment

Supports change management, operational resilience, release governance, incident prevention and auditability.

## Caveats

Not every change requires heavyweight governance.

The level of control should reflect:

- risk;
- business criticality;
- reversibility;
- complexity;
- customer impact.

**Proportionate change control is stronger than either no control or unnecessary bureaucracy.**
