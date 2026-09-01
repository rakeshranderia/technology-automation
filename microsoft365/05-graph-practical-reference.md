# 05 — Microsoft Graph Practical Reference

## What Microsoft Graph Is

Microsoft Graph is Microsoft's API layer for accessing data and services across Microsoft 365, Entra ID and related cloud services.

A simple view is:

**PowerShell / Application → Microsoft Graph → Microsoft 365 / Entra Services**

Graph provides a consistent way to query or administer supported services without relying entirely on individual admin portals.

## Key Concept: Authentication vs Authorisation

### Authentication

Answers:

**Who or what is making the request?**

Examples:

- interactive administrator;
- application identity;
- managed identity;
- service principal.

### Authorisation

Answers:

**What is that identity allowed to do?**

Graph permissions determine allowed operations.

## Delegated vs Application Permissions

### Delegated

The application acts on behalf of a signed-in user.

Effective access is influenced by both:

- Graph permissions;
- the user's own access.

### Application

The application operates without an interactive user.

This can be powerful and should be tightly controlled.

## Practical Reporting Pattern

```powershell
Connect-MgGraph -Scopes "Reports.Read.All"

Invoke-MgGraphRequest `
    -Method GET `
    -Uri "https://graph.microsoft.com/v1.0/reports/getM365AppUserDetail(period='D7')" `
    -OutputFilePath ".\m365-app-user-detail.csv"
```

Some report endpoints return downloadable content rather than normal JSON, making `-OutputFilePath` useful.

## Security Considerations

### Least Privilege

Request only the permissions required.

### Service Identities

Application identities should have:

- clear owner;
- defined purpose;
- minimum permissions;
- credential lifecycle;
- review process.

### Secrets

Do not embed secrets in scripts.

Prefer:

- managed identities;
- certificate-based authentication;
- approved secret stores.

### Logging

Record:

- query/action;
- operator or application;
- timestamp;
- outcome;
- exceptions.

### Data Handling

Graph output may contain:

- identity information;
- usage information;
- organisational metadata.

Handle exports according to classification and retention requirements.

## API Operational Controls

Useful controls include:

- authentication;
- authorisation;
- OAuth 2.0 / OIDC where applicable;
- TLS;
- token lifecycle;
- input validation;
- rate limiting;
- API gateways for custom APIs;
- secrets management;
- logging and monitoring;
- version management.

## Evidence Produced

- script or query;
- Graph permission scope;
- exported data;
- timestamp;
- execution log;
- review outcome.

## Caveats

A successful Graph query proves that data was retrieved. It does not automatically prove:

- the data is current;
- the report measures the intended business outcome;
- access is appropriately governed;
- the result has been reviewed.

**Understand the endpoint before making a claim from the data.**
