# 03 — Evidence and Review

## Problem

A control can operate correctly and still be difficult to demonstrate if evidence is inconsistent or retained only in administrator knowledge.

## Simple Explanation

Technical activity becomes stronger control evidence when it is:

**Repeatable → Timestamped → Reviewable → Retained**

Evidence should answer: what was expected, what happened, who/what performed it, when, what exceptions occurred and who reviewed the result.

## Practical Pattern

### Capture Execution
Record timestamp, operator/system identity, target, action, result and exceptions.

### Preserve Before/After Information
Where useful, retain membership changes, mailbox state, ACL exports and unresolved items.

### Notify
Use completion notifications to record completion time, target identity, delegate applied and exceptions.

### Review
Require the appropriate control owner to review exceptions, retained access or periodic certifications.

### Retain
Retain evidence according to risk, audit, investigation and organisational retention requirements.

## Example Evidence Flow

**Request / Approval → Execution Log → Entitlement Changes → Exceptions → Completion Notification → Review**

For file shares:

**Scan Scope → ACL Export → Group Mapping → Reviewer Decision → Remediation → Follow-up Evidence**

## Evidence Produced

- execution logs;
- access exports;
- change records;
- approval references;
- completion notifications;
- exception records;
- reviewer sign-off;
- remediation confirmation.

## Control Alignment

Supports logging, monitoring, access review, identity lifecycle, change evidence and assurance objectives.

See [`ISO-27001-control-map.md`](ISO-27001-control-map.md).

## Caveats

A successful script does not prove every relevant system was included, the access decision was appropriate, indirect access was removed or that someone reviewed the evidence.

**Good evidence shows what happened. Good governance determines whether what happened was appropriate.**
