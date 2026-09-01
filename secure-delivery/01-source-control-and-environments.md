# 01 — Source Control and Environment Separation

## Problem

Delivery becomes difficult to control when source code, configuration and changes are not consistently versioned, or when development activity can flow directly into production without clear separation.

## Simple Explanation

Source control provides traceability.

Environment separation provides control.

Together they help answer:

**What changed → Who changed it → Where it was tested → What reached production**

## Practical Pattern

### Source Control

Use an approved source-control platform to retain:

- code history;
- configuration changes;
- version history;
- author information;
- review context;
- release references.

Historical examples include Microsoft Team Foundation Server and SVN, while modern platforms may provide equivalent capabilities through integrated Git-based workflows.

### Environment Separation

Maintain logical separation between:

- development;
- test;
- UAT;
- production.

The exact number of environments should reflect system criticality and delivery complexity.

The important principle is that production should not become the normal place for experimentation or uncontrolled change.

### Access

Production access should be more restricted than development access.

Where practical:

- separate build and deploy permissions;
- limit direct production change;
- use approved release paths;
- log privileged activity.

## Example Implementation

A practical delivery environment may use:

**Developer change → Source control → Build/Test → UAT → Approved release → Production**

Earlier implementations can be simpler than modern pipeline tooling and still provide good control if versioning, separation, approval and evidence are clear.

## Evidence Produced

- version history;
- commit/change records;
- build or release references;
- environment promotion record;
- access logs;
- approval record.

## Control Alignment

Supports objectives relating to:

- change management;
- separation of environments;
- privileged access;
- secure development;
- configuration management;
- logging and traceability.

## Caveats

Tooling does not create discipline by itself.

A source-control system is weak if:

- users bypass it;
- production changes are undocumented;
- credentials are embedded in code;
- environment boundaries are unclear;
- review is optional for material changes.

**The control is the delivery process. The tool supports the process.**
