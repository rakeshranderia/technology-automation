# Azure Operational Runbook

## Purpose

Provide a repeatable pattern for common Azure operational activities.

## Before Starting

Confirm:

- correct subscription;
- correct tenant;
- target resource;
- approved change/request;
- operator permissions;
- expected business impact;
- recovery or rollback option.

## Identify Resource

Capture:

- subscription;
- resource group;
- resource name;
- resource type;
- region;
- owner;
- business service.

## Pre-Change Validation

Check where applicable:

- current health;
- active incidents;
- monitoring alerts;
- dependencies;
- recent changes;
- backup/recovery status;
- capacity;
- security configuration.

## Execute Change

Record:

- action;
- timestamp;
- operator;
- command / portal action / deployment reference.

Prefer repeatable deployment mechanisms where practical.

## Post-Change Validation

Validate:

- resource health;
- connectivity;
- dependent systems;
- application function;
- monitoring;
- authentication/access;
- expected configuration.

## Rollback

If validation fails:

1. stop further change;
2. assess impact;
3. execute approved rollback/recovery;
4. validate restored state;
5. escalate if required.

## Evidence

Retain:

- change reference;
- before/after state;
- deployment output;
- validation results;
- monitoring evidence;
- exceptions.

## Close

Confirm:

- service stable;
- business owner informed where appropriate;
- documentation updated;
- follow-up actions assigned.
