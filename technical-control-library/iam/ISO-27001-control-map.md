# IAM Technical Control Map

| Operational need | Practical pattern | Example evidence | ISO 27001:2022 control intent |
|---|---|---|---|
| Remove access when employment ends | Structured offboarding workflow | Offboarding log, disabled account, entitlement-removal results | A.5.16 Identity management; A.5.18 Access rights |
| Reduce residual group access | Enumerate and remove group memberships | Before/after membership output | A.5.15 Access control; A.5.18 Access rights |
| Manage mailbox delegation deliberately | Optional named delegate rather than automatic reassignment | Delegate, approval/request, Exchange audit/log | A.5.15; A.5.18 |
| Find hidden file-share access | Recursive ACL inventory | CSV of identity, rights, path, inheritance | A.5.15; A.8.3 Information access restriction |
| Make security-group access understandable | Enrich ACLs with group/member metadata | Group/member review dataset | A.5.16; A.5.18 |
| Detect failed deprovisioning steps | Structured logging and exception capture | Error entries and follow-up actions | A.8.15 Logging; A.8.16 Monitoring activities |
| Review privileged access separately | Identify privileged groups / elevated ACLs | Privileged-access review | A.8.2 Privileged access rights |
| Keep automation accountable | WhatIf/test, scoped targets, named control owner | Change record, script log, reviewer decision | Supports governance and auditability across access controls |

## Important

The table maps technical patterns to the **intent** of relevant controls. It does not imply that a script, command or export is sufficient evidence of conformity by itself.
