# 03 — Evidence, Exceptions and Access Review

## Automation is not the control owner

PowerShell can execute repeatable actions quickly, but it should not silently decide:

- who should retain access;
- who should receive a former employee's mailbox;
- whether an inherited ACL is appropriate;
- whether a privileged entitlement is justified;
- whether an exception is acceptable.

Those remain business / control-owner decisions.

## A useful evidence pattern

For each automated control, retain:

### Input

- identity or resource in scope;
- request / trigger;
- operator;
- date/time.

### Action

- action attempted;
- system;
- command / control step;
- outcome.

### Exception

- failed action;
- reason where available;
- manual follow-up owner.

### Output

- CSV / log path;
- completion notification;
- review date or next control activity.

## Periodic access review

A lightweight review can start with a simple exported dataset:

**Identity → Resource → Right → Direct/Inherited → Group → Group members → Reviewer decision**

Reviewer decisions might be:

- retain;
- remove;
- investigate;
- exception approved.

The important thing is that decisions are explicit rather than implied by inactivity.

## Evidence lifecycle

Do not keep access-review exports forever simply because storage is cheap.

Apply the organisation's:

- records-retention requirements;
- privacy requirements;
- log-protection controls;
- access restrictions.

## Practical principle

> **Automation removes repetitive effort.  
> Evidence makes the control observable.  
> A named owner makes the decision accountable.**
