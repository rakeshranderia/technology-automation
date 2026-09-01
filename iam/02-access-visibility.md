# 02 — Access Visibility

## Problem

Access cannot be governed effectively if the organisation cannot see who has it.

File-share permissions can accumulate through security groups, nested groups, inherited permissions, direct assignments and legacy project access.

## Simple Explanation

The first step is often visibility rather than removal.

**Discover → Normalise → Map → Export → Review**

## Practical Pattern

### Discover
Recursively scan defined file-system paths and inspect ACL entries.

### Normalise
Exclude defined built-in/default identities where they do not add useful review value.

### Map
Map permissions to identities/security groups and, where useful, expand group membership.

### Export
Produce structured output containing path, identity, access type, permissions, inheritance, group membership and scan timestamp.

### Review
Use the export to identify orphaned groups, excessive access, stale permissions, unusual direct assignments and unclear ownership.

## Example Implementation

See [`scripts/Export-FileShareAcl-Example.ps1`](scripts/Export-FileShareAcl-Example.ps1).

The example demonstrates recursive NTFS ACL scanning, explicit exclusions, progress reporting, group/identity mapping and CSV export.

## Evidence Produced

- dated ACL export;
- scan scope;
- excluded identities;
- group/member mapping;
- exceptions;
- reviewer decisions;
- remediation evidence.

## Control Alignment

Supports access visibility, access-right review, least privilege, privileged access, information access restriction and monitoring/evidence objectives.

See [`ISO-27001-control-map.md`](ISO-27001-control-map.md).

## Caveats

Configured permissions do not necessarily equal effective access. Nested groups, deny rules, share permissions, disabled users, service identities and external identities may require separate analysis.

**Visibility enables review. It does not replace review.**
