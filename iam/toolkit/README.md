# IAM Automation Toolkit

Practical identity lifecycle and access-governance material covering offboarding, access visibility and evidence.

## Pattern

**Identity → Entitlements → Change → Evidence → Review**

## Reference Material

- [`../01-user-offboarding.md`](../01-user-offboarding.md)
- [`../02-access-visibility.md`](../02-access-visibility.md)
- [`../03-evidence-and-review.md`](../03-evidence-and-review.md)
- [`../ISO-27001-control-map.md`](../ISO-27001-control-map.md)

## Example Automation

- [`../scripts/Invoke-UserOffboarding-Example.ps1`](../scripts/Invoke-UserOffboarding-Example.ps1)
- [`../scripts/Export-FileShareAcl-Example.ps1`](../scripts/Export-FileShareAcl-Example.ps1)

## Typical Use

### User Offboarding
Identify → Disable → Remove → Preserve → Evidence → Review

### Access Review
Scope → Export → Map → Review → Remediate → Evidence

## Principle

**Automation supports identity governance. It does not replace access ownership or approval.**
