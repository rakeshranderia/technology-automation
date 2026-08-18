# Microsoft 365 User Reporting

## Purpose

This example demonstrates how Microsoft Graph can be used to automate reporting across a Microsoft 365 environment.

The objective is to replace repetitive manual administration with a repeatable and auditable process.

---

## Business Problem

Microsoft 365 environments can contain large numbers of users, groups and services.

Manually collecting information can be:

- Time consuming
- Inconsistent
- Difficult to repeat
- Difficult to audit

Automation provides a consistent way to collect and report information.

---

## Automated Approach

A Microsoft Graph-based process can:

1. Authenticate securely
2. Query Microsoft 365
3. Retrieve user information
4. Select relevant attributes
5. Generate a structured report
6. Store the output securely

---

## Example Workflow

```text
Microsoft 365
      ↓
Microsoft Graph
      ↓
Authentication
      ↓
User Data
      ↓
PowerShell
      ↓
Structured Report