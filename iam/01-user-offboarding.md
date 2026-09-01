# 01 — User Offboarding

## Problem

User offboarding often spans more systems than simply disabling an Active Directory account. Access may remain through groups, Microsoft 365 licences, Teams, delegated mailboxes/calendars, shared resources, local file shares and application roles.

## Simple Explanation

The objective is to remove access when it is no longer required while preserving any business information or delegated access that legitimately needs to remain.

**Identify → Disable → Remove → Preserve → Evidence → Review**

## Practical Pattern

### Identify
Confirm the user, effective termination date, business owner, retention requirements, required delegation and known local/application access.

### Disable
Restrict authentication, disable the account and revoke active sessions where appropriate.

### Remove
Review and remove AD groups, Microsoft 365 groups, distribution lists, Teams access, delegated mailbox/calendar permissions, file-share permissions and licences where appropriate.

### Preserve
Where required, convert the mailbox to shared, hide the former user from the GAL, retain required records and delegate approved mailbox access.

### Evidence
Capture groups removed, mailbox changes, delegation, file-share access, timestamps, exceptions and completion notification.

### Review
Escalate exceptions where ownership is unclear, retention applies or legacy systems cannot be automated safely.

## Example Implementation

See [`scripts/Invoke-UserOffboarding-Example.ps1`](scripts/Invoke-UserOffboarding-Example.ps1).

Typical actions include disabling the identity, removing entitlements, revoking delegated access, hiding from the GAL, converting the mailbox to shared, applying approved delegation, logging actions and notifying completion.

## Evidence Produced

- request or approval reference;
- target identity;
- execution date/operator;
- removed entitlements;
- mailbox/delegation changes;
- exceptions;
- completion notification.

## Control Alignment

Supports identity lifecycle, access provisioning/deprovisioning, access review, privileged/sensitive access, logging and evidence objectives.

See [`ISO-27001-control-map.md`](ISO-27001-control-map.md).

## Caveats

Production workflows should consider service accounts, privileged identities, legal hold, SaaS access, device recovery, secrets/certificates, workflow ownership and segregation-of-duties requirements.

**Automation supports the control owner. It does not replace access ownership or business approval.**
