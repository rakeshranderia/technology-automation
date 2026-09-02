# 06 — Graph Application Permissions

## Delegated Permissions

An application acts on behalf of a signed-in user.

## Application Permissions

An application acts as itself without a user present.

This can provide broad access and therefore needs stronger governance.

## Control Pattern

**Purpose → Identity → Minimum Permission → Credential → Logging → Review**

## Review Questions

- Why is application access needed?
- Who owns the application identity?
- Which Graph permissions are required?
- Can delegated access be used instead?
- Where are credentials stored?
- How are credentials rotated?
- How is usage monitored?
- When will permissions be reviewed?

## Evidence

- app registration
- owner
- permission grant
- approval
- credential lifecycle
- sign-in/audit logs
- periodic review
