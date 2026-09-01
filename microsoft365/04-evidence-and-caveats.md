# 04 — Evidence and Caveats

## Problem

Operational scripts can produce technically correct output that is later interpreted too broadly.

This is especially relevant for reporting and telemetry.

## Simple Explanation

Good evidence needs both:

**Technical Output + Correct Interpretation**

The output itself is only one part of the control or decision process.

## Practical Evidence Pattern

For Microsoft 365 reporting:

**Question → Graph Permission → Endpoint → Export → Interpretation → Decision**

For administration:

**Approved Request → Validation → Change → Log → Review**

## Evidence Produced

Potential evidence includes:

- Graph query endpoint;
- permission used;
- timestamp;
- CSV export;
- execution log;
- before/after data;
- reviewer notes;
- decision record.

## Common Caveats

### Endpoint Meaning

A report should be described according to what it actually measures.

Do not infer product-specific adoption from a broader Microsoft 365 report.

### Permission Scope

Graph permissions can provide broad access.

Use the minimum permission needed and review privileged application or delegated access.

### Service Change

Microsoft Graph endpoints, report formats and service behaviour can change.

Operational scripts should be reviewed when Microsoft changes the service.

### Data Latency

Usage reports may not be real-time.

Avoid presenting delayed reporting as current-state telemetry.

### Export Security

CSV exports may contain user or organisational information.

Store and handle them according to data-classification and retention requirements.

## Control Alignment

These patterns support:

- monitoring;
- reporting;
- operational evidence;
- access governance;
- technology adoption measurement;
- auditability.

## Perspective

The strongest Microsoft 365 automation is not the script with the most commands.

It is the one that clearly connects:

**Operational Question → Appropriate Permission → Repeatable Action → Reliable Evidence → Useful Decision**
