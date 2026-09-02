# Azure Service Recovery Runbook

## Trigger

Use when an Azure-hosted service is unavailable, degraded or requires controlled recovery.

## Assess

Confirm:
- subscription
- resource group
- resource
- business service
- impact
- current Azure service health
- recent changes
- dependencies

## Recovery Options

Depending on architecture:
- restart/redeploy resource
- rollback recent configuration
- fail over
- restore from backup
- redeploy from IaC
- engage Microsoft/vendor support

## Validation

Confirm:
- resource health
- connectivity
- identity/access
- application function
- integration
- data integrity
- monitoring

## Evidence

- incident/change reference
- recovery action
- timestamps
- validation output
- unresolved risks

## Principle

**Recovery is not complete until the business service, not just the Azure resource, is validated.**
