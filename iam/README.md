# Identity & Access Management

This module provides practical examples for improving identity lifecycle, access visibility and deprovisioning.

The objective is not simply to automate account administration. It is to make access decisions more repeatable, reduce orphaned permissions and preserve evidence that expected control activities occurred.

## Design Pattern

**Identity → Entitlements → Change → Evidence → Review**

**Policy says what must happen.  
A technical control makes the expected action repeatable.  
Evidence shows that it happened.**

Automation supports control owners. It does not replace business judgement, approval, legal retention requirements or access ownership.

## Module Contents

- [`01-user-offboarding.md`](01-user-offboarding.md)
- [`02-access-visibility.md`](02-access-visibility.md)
- [`03-evidence-and-review.md`](03-evidence-and-review.md)
- [`ISO-27001-control-map.md`](ISO-27001-control-map.md)

## Example Scripts

- [`scripts/Invoke-UserOffboarding-Example.ps1`](scripts/Invoke-UserOffboarding-Example.ps1)
- [`scripts/Export-FileShareAcl-Example.ps1`](scripts/Export-FileShareAcl-Example.ps1)

These demonstrate operating patterns rather than production-ready deployment code.

## Scope

Current examples focus on Active Directory, Microsoft 365, Exchange, collaboration access, mailbox/calendar permissions, local Windows file shares, NTFS ACL visibility and identity/entitlement evidence.

## Purpose

This is a practical technical-control reference, not an IAM product, compliance claim, legal-retention workflow or substitute for approved organisational access-management procedures.
