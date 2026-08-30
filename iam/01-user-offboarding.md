# 01 — User Offboarding as a Repeatable Control

## Problem

A user can be disabled in Active Directory and still retain effective access through:

- Microsoft 365 groups;
- distribution lists;
- mailbox or calendar delegation;
- Teams / SharePoint membership;
- local file-share ACLs;
- assigned cloud licences;
- delegated access held by other identities.

Treating “disable account” as “offboarding complete” creates avoidable residual access.

## Simplified workflow

**Identify → Disable → Revoke → Remove → Preserve → Delegate → Log → Notify**

### Identify

Capture the account and relevant identifiers before making changes.

Examples:

- `SamAccountName`
- UPN / email address
- manager
- mailbox
- current group memberships

### Disable

Typical directory actions:

- disable the AD account;
- optionally move it to a Disabled Users OU;
- clear or update agreed account attributes;
- disable / block cloud sign-in where required.

### Revoke and remove

Remove access from the systems in scope:

- AD security groups;
- Microsoft 365 / Azure AD groups;
- distribution groups / lists;
- Microsoft 365 licences;
- mailbox and calendar permissions;
- Teams / SharePoint memberships;
- local file-share permissions.

### Preserve business information

Where required:

- hide the former user from the GAL;
- convert the mailbox to shared;
- preserve required mailbox content;
- avoid removing the mailbox's `SELF` permission.

### Delegate only when requested

A useful offboarding workflow can prompt for an optional delegate.

If supplied:

- assign **Full Access**;
- assign **Send As**.

If blank:

- skip delegation cleanly.

This keeps delegation as a business decision rather than an automatic entitlement.

### File-share cleanup

Where legacy/on-premises shares remain in scope, recursively remove explicit permissions associated with the former identity.

Production implementations should define the exact shares in scope rather than indiscriminately scanning every server.

### Evidence

Write an audit log covering:

- start/end time;
- account;
- each attempted action;
- success/failure;
- exceptions;
- delegate, if any;
- log/output path.

### Notify

Send a completion message containing:

- account processed;
- high-level actions completed;
- exceptions requiring manual follow-up;
- delegate if used;
- audit-log path.

## Control outcome

The useful outcome is not “the script ran”.

It is:

> **The identity was disabled, known entitlements were removed, business information was handled deliberately, exceptions were visible, and an evidence trail was produced.**

## Example

See [`scripts/Invoke-UserOffboarding-Example.ps1`](scripts/Invoke-UserOffboarding-Example.ps1).

The sample is intentionally a framework rather than a drop-in production script. Every organisation has different group, Exchange, Teams, SharePoint, retention and approval requirements.
