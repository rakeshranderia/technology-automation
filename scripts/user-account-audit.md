# User Account Audit

## Purpose

This PowerShell example demonstrates how routine identity administration can be automated to improve visibility and reduce manual effort.

The script retrieves user account information from Active Directory and produces a CSV report.

---

## Business Problem

Regular user account reviews can become time-consuming when performed manually.

Organisations may need visibility of:

- Active accounts
- Disabled accounts
- Last logon activity
- Password age
- Department
- User role

---

## Automated Approach

The script:

1. Checks for the Active Directory PowerShell module
2. Connects to Active Directory
3. Retrieves user accounts
4. Collects selected attributes
5. Generates a structured report
6. Exports the results to CSV

---

## Example Workflow

```text
Active Directory
       ↓
PowerShell
       ↓
User Account Data
       ↓
CSV Report
       ↓
Operational / Security Review