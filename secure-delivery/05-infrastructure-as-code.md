# 05 — Infrastructure as Code

## Problem

Infrastructure changes become difficult to control when environments are built or modified manually without a repeatable definition of the intended state.

Manual configuration can create:

- drift between environments;
- inconsistent security settings;
- undocumented changes;
- difficult rollback;
- limited evidence of who changed what.

## Simple Explanation

Infrastructure as Code (IaC) treats infrastructure configuration as version-controlled code.

A practical pattern is:

**Desired State → Version Control → Review → Plan → Apply → Validate → Evidence**

Tools such as Terraform or Azure Bicep can implement this pattern, but the control objective is broader than any single tool.

## Practical Pattern

### 1. Define Desired State

Describe the intended infrastructure configuration in code.

Examples may include:

- networks;
- virtual machines;
- storage;
- security groups;
- identity assignments;
- platform services;
- policy configuration.

### 2. Store in Source Control

Infrastructure definitions should be version controlled so changes are attributable and reviewable.

### 3. Review Changes

Material changes should be reviewed before deployment.

Useful controls include:

- pull requests;
- peer review;
- branch protection;
- approval requirements;
- automated validation.

### 4. Plan Before Apply

Where supported, generate a deployment plan showing expected additions, modifications and removals.

The plan provides an opportunity to identify unintended change before production impact.

### 5. Apply Through a Controlled Path

Prefer approved deployment mechanisms over direct manual production changes.

### 6. Validate

Confirm that deployed infrastructure matches:

- expected configuration;
- security requirements;
- connectivity;
- monitoring;
- operational expectations.

### 7. Preserve Evidence

Useful evidence may include:

- commit history;
- pull request;
- approval;
- plan output;
- deployment log;
- validation results;
- rollback/change record.

## Terraform and Bicep

### Terraform

Terraform is a declarative IaC tool that can manage infrastructure across multiple providers, including Azure, AWS and Google Cloud.

Typical lifecycle:

```text
Write configuration
      ↓
terraform init
      ↓
terraform validate
      ↓
terraform plan
      ↓
Review
      ↓
terraform apply
      ↓
Validate
```

### Azure Bicep

Bicep is a declarative language designed for Azure Resource Manager deployments.

Typical lifecycle:

```text
Bicep definition
      ↓
Source control
      ↓
Validate / What-if
      ↓
Review
      ↓
Deploy
      ↓
Validate
```

## Control Alignment

IaC can support:

- change management;
- configuration management;
- secure development;
- environment consistency;
- traceability;
- separation of duties;
- recovery/rebuild capability.

## Caveats

IaC does not automatically make infrastructure secure.

Risks still include:

- insecure templates;
- secrets embedded in code;
- over-privileged deployment identities;
- poor state-file protection;
- destructive changes;
- uncontrolled manual changes outside IaC.

**IaC improves repeatability and evidence. Governance still determines what should be deployed.**
