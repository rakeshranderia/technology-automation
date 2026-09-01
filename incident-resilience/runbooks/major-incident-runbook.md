# Major Incident Runbook

## Purpose

Provide a practical structure for coordinating a significant technology incident.

## Operating Pattern

**Detect → Assess → Contain → Communicate → Recover → Validate → Learn**

## 1. Declare the Incident

Confirm:
- incident lead;
- technical lead(s);
- affected service(s);
- business impact;
- severity;
- initial timestamp;
- communication channel;
- stakeholder group.

## 2. Establish the Facts

Capture symptoms, affected users/systems, scope, recent changes, security implications, third-party dependencies and known workarounds.

Avoid presenting assumptions as confirmed facts.

## 3. Contain

Take proportionate action to limit further impact.

Examples:
- isolate affected systems;
- disable a failed integration;
- restrict access;
- stop a deployment;
- fail over to a secondary service;
- engage a vendor.

## 4. Communicate

Set a communication cadence appropriate to impact.

A useful update contains:
- what is affected;
- business impact;
- actions underway;
- current workaround;
- next update time;
- decisions required.

## 5. Recover

Restore service using the safest practical path.

Consider rollback, configuration restoration, failover, recovery from backup, service restart or vendor-supported remediation.

## 6. Validate

Before declaring recovery, confirm:
- service availability;
- user access;
- data integrity;
- integrations;
- monitoring;
- security controls;
- business validation where required.

## 7. Close

Record final impact, recovery time, workaround status, unresolved issues and follow-up actions.

## Evidence Produced

- incident timeline;
- decision log;
- technical actions;
- stakeholder communications;
- recovery evidence;
- validation results;
- follow-up actions.

## Caveat

Temporary fixes should not disappear into BAU without ownership, review and a permanent remediation decision.
