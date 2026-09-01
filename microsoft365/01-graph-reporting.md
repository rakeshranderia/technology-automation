# 01 — Microsoft Graph Reporting

## Problem

Microsoft 365 administration often requires repeatable reporting across identities, applications and usage.

Manual portal checks can be useful for one-off investigation, but they are harder to repeat, compare over time or preserve as evidence.

## Simple Explanation

Microsoft Graph provides a consistent API surface for retrieving Microsoft 365 data.

A practical reporting pattern is:

**Question → Permission → Request → Export → Review**

The important part is to start with the question, not the API.

## Practical Pattern

### 1. Define the Question

Examples include:

- Which Microsoft 365 workloads are being used?
- How has usage changed over time?
- Which users appear in a usage report?
- What data is available for adoption measurement?
- What operational evidence needs to be exported?

### 2. Use the Minimum Required Permission

For Microsoft 365 usage reporting, a relevant permission is:

`Reports.Read.All`

The permission should be granted deliberately and reviewed in line with organisational access-governance requirements.

### 3. Query Microsoft Graph

A practical PowerShell pattern is:

```powershell
Invoke-MgGraphRequest `
    -Method GET `
    -Uri "https://graph.microsoft.com/v1.0/reports/getM365AppUserDetail(period='D7')" `
    -OutputFilePath ".\m365-app-user-detail.csv"
```

Some reporting endpoints return downloadable content rather than a normal JSON object, so writing directly to an output file can be the correct pattern.

### 4. Export

CSV output is useful where the result needs to be:

- reviewed by administrators;
- compared across reporting periods;
- imported into Power BI or Excel;
- retained as operational evidence.

### 5. Review

The output should be interpreted in the context of the original question.

A report showing usage does not automatically prove value, adoption quality or control effectiveness.

## Evidence Produced

- exported CSV;
- reporting period;
- query or endpoint used;
- execution date;
- permission context;
- subsequent analysis or review.

## Control Alignment

This pattern can support operational reporting, access governance, usage monitoring and evidence objectives.

## Caveats

Graph reporting results depend on:

- endpoint semantics;
- reporting-period limitations;
- tenant configuration;
- licensing;
- data latency;
- permissions;
- Microsoft service changes.

**Always validate what a report actually measures before using it as evidence for a broader claim.**
