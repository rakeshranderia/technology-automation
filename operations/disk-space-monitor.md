# Disk Space Monitoring

## Purpose

This example demonstrates how a routine infrastructure monitoring task can be automated.

The script checks local disk utilisation and identifies volumes approaching defined capacity thresholds.

## Business Problem

Limited disk capacity can cause:

- Application failures
- Service interruptions
- Performance issues
- Unexpected operational incidents

Regular monitoring can identify potential issues before they become incidents.

## Automated Approach

The script:

1. Identifies local disks
2. Calculates utilisation
3. Applies warning and critical thresholds
4. Produces a status
5. Generates a CSV report

## Example Workflow

Infrastructure
↓
Automated Check
↓
Capacity Assessment
↓
OK / WARNING / CRITICAL
↓
Operational Action

## Example Thresholds

| Utilisation | Status |
|---|---|
| Below 80% | OK |
| 80–89% | WARNING |
| 90%+ | CRITICAL |

Thresholds should be adjusted according to the environment and service requirements.

## Potential Extensions

A production implementation could:

- Monitor multiple servers
- Send alerts
- Integrate with an ITSM platform
- Create incidents automatically
- Feed an executive dashboard
- Identify capacity trends
- Trigger automated remediation

## Executive Perspective

Monitoring automation helps move IT operations from:

**Reactive → Proactive**

The value is not simply knowing that disk space is running low.

The value is identifying the risk early enough to prevent a business-impacting incident.