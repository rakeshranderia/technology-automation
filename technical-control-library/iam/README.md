# Simplifying IAM

Identity and access management often becomes difficult because access is spread across directories, groups, SaaS platforms, mailboxes, collaboration tools and file systems.

The useful question is not:

> “Do we have an IAM tool?”

It is:

> **“Can we quickly see who has access, remove it when it is no longer needed, and show what happened?”**

This module uses a simple operating model:

**Identity → Entitlements → Visibility → Change → Evidence → Review**

## What this module is based on

The examples are derived from practical PowerShell work covering:

- Active Directory user offboarding;
- removal of AD / Microsoft 365 group memberships;
- Microsoft 365 licence removal;
- Exchange mailbox and calendar permission cleanup;
- distribution-list and Teams / SharePoint access removal;
- hiding a mailbox from the GAL;
- conversion of a mailbox to shared;
- optional mailbox delegation with Full Access and Send As;
- recursive local-file-share ACL cleanup;
- recursive NTFS ACL export to CSV;
- exclusion of default/built-in Windows identities from review output;
- mapping permissions to users and security groups;
- completion logging and email notification.

The public examples are generic and intentionally remove employer-specific infrastructure, identities and paths.

## ISO 27001:2022 alignment

These patterns support the intent of controls commonly associated with:

- **A.5.15 — Access control**
- **A.5.16 — Identity management**
- **A.5.17 — Authentication information**
- **A.5.18 — Access rights**
- **A.8.2 — Privileged access rights**
- **A.8.3 — Information access restriction**
- **A.8.15 — Logging**
- **A.8.16 — Monitoring activities**

This is control-alignment collateral, not a claim that running a script creates ISO 27001 compliance.

## The simple model

### 1. Visibility

Before access can be governed, it has to be visible.

Useful evidence includes:

- account state;
- group membership;
- mailbox / calendar delegation;
- Teams / SharePoint membership;
- file-share ACL assignments;
- whether access is direct or inherited;
- who or what security group owns the entitlement.

See: [`02-access-visibility.md`](02-access-visibility.md)

### 2. Deprovisioning

Offboarding should remove access through a predictable workflow rather than a collection of memory-based manual tasks.

See: [`01-user-offboarding.md`](01-user-offboarding.md)

### 3. Evidence

A control is easier to defend when the action produces a record:

- account processed;
- actions attempted;
- actions completed;
- exceptions;
- delegated mailbox recipient where used;
- log location;
- completion notification.

See: [`03-evidence-and-review.md`](03-evidence-and-review.md)

## Why simplify it?

A small organisation may not need a large IGA platform on day one.

A sensible progression can be:

1. **Know where access exists.**
2. **Standardise the offboarding checklist.**
3. **Automate repeatable steps.**
4. **Log the result.**
5. **Review exceptions.**
6. **Introduce heavier IAM / IGA tooling when scale or risk justifies it.**

Automation should reduce repetitive effort and missed steps, not hide decision-making.
