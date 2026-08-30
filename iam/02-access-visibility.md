# 02 — Access Visibility Before Access Governance

## Problem

Access reviews fail when the reviewer cannot easily answer:

- Who has access?
- Is it direct or inherited?
- Is access assigned to a person or a security group?
- Which folders or files are affected?
- Which permissions are meaningful versus default Windows identities?

File systems are a common blind spot because permissions accumulate over time.

## Practical pattern

**Scan → Normalise → Exclude noise → Map identity → Export → Review**

### Scan

Recursively enumerate the agreed root path and inspect NTFS access-control entries on directories and files.

### Normalise

For each access rule, capture useful fields such as:

- path;
- identity;
- access-control type;
- file-system rights;
- inherited / explicit;
- inheritance / propagation flags.

### Exclude default identities

A review becomes much easier when expected platform identities are separated from business access.

Examples previously excluded from reporting included identities such as:

- `BUILTIN\Administrators`
- `BUILTIN\Users`
- `BUILTIN\Backup Operators`
- `BUILTIN\Power Users`
- selected `NT AUTHORITY` identities

The exclusion list should be explicit and locally reviewed rather than assumed to be universal.

### Map groups

Where an ACL references a security group, enrich the report with directory information where useful:

- group name;
- members;
- notes / description;
- creation date.

This turns a filesystem ACL into something a control owner can understand.

### Export

CSV is intentionally boring and useful.

It supports:

- sorting;
- filtering;
- comparison between review periods;
- evidence retention;
- import to Power BI / Excel / other review tooling.

### Progress reporting

For large directory trees, display scan progress so the operator can distinguish a long-running assessment from a failed process.

## Control outcome

> **Access that was previously buried in filesystem ACLs becomes reviewable data.**

That supports better offboarding, periodic access review and identification of orphaned or excessive permissions.

## Example

See [`scripts/Export-FileShareAcl-Example.ps1`](scripts/Export-FileShareAcl-Example.ps1).
