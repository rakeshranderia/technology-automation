# 07 — CI/CD Reference

## Continuous Integration

Frequent integration of code changes with automated validation.

Typical controls:
- source control
- pull requests
- automated build
- unit/integration tests
- static analysis
- artifact creation

## Continuous Delivery / Deployment

Moves validated changes toward or into production through repeatable release paths.

Typical controls:
- environment promotion
- approval gates
- deployment automation
- rollback
- release evidence
- monitoring

## Pattern

**Commit → Build → Test → Review → Package → Deploy → Validate**

## Caveat

Automation reduces manual inconsistency but does not remove the need for release ownership and risk decisions.
