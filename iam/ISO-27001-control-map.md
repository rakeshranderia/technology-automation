# ISO/IEC 27001:2022 — Illustrative IAM Control Map

This page provides an illustrative mapping between the IAM patterns in this module and relevant ISO/IEC 27001:2022 control themes.

It is not a Statement of Applicability, certification claim or substitute for formal control interpretation.

| Library Pattern | Relevant Control | Practical Intent |
|---|---|---|
| User offboarding | A.5.15 Access control | Govern access according to business and security requirements. |
| User offboarding | A.5.16 Identity management | Manage identities throughout their lifecycle. |
| User offboarding | A.5.18 Access rights | Provision, review, modify and remove access appropriately. |
| Privileged/sensitive access | A.8.2 Privileged access rights | Restrict and manage privileged access. |
| File-share access visibility | A.8.3 Information access restriction | Restrict access to information in line with requirements. |
| Execution/change evidence | A.8.15 Logging | Record relevant activities and events. |
| Review/exception monitoring | A.8.16 Monitoring activities | Monitor relevant systems and activities. |

## How the Patterns Connect

### Identity Lifecycle
**Identify → Disable → Remove → Preserve → Evidence → Review**

### Access Visibility
**Discover → Normalise → Map → Export → Review**

### Evidence
Logs, exports, notifications and review records can support assurance when incorporated into an approved control process.

## Important Distinction

A script does not itself make an organisation compliant.

- disabling a user does not prove an effective identity-lifecycle process;
- exporting ACLs does not prove permissions were reviewed;
- generating a log does not prove someone monitors it;
- mapping a script to a control does not prove control effectiveness.

A stronger model is:

**Policy / Requirement → Control Owner → Technical Pattern → Evidence → Review → Improvement**

## Disclaimer

Formal ISO/IEC 27001 implementation should be based on the organisation's own scope, risk assessment, Statement of Applicability, policies, procedures and assurance requirements.
