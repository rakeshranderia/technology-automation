# Security Control Audit

## Purpose

This PowerShell example demonstrates how security controls can be assessed using repeatable automated checks.

The example focuses on visibility rather than making changes to the environment.

---

## Business Problem

Security teams often need to validate whether basic controls remain correctly configured.

Manual checking can be:

- Time consuming
- Inconsistent
- Difficult to repeat
- Difficult to evidence

Automation can provide a repeatable assessment process.

---

## Automated Checks

The example checks:

- Windows Firewall status
- Microsoft Defender availability
- Control status
- PASS / FAIL result

Results are exported to a CSV report.

---

## Example Workflow

```text
Endpoint
   ↓
Security Controls
   ↓
Automated Assessment
   ↓
PASS / FAIL
   ↓
Security Report
   ↓
Remediation