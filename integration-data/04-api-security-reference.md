# 04 — API Security Reference

## What an API Is

An API is a defined interface that allows one system to request data or functionality from another system.

A common pattern is:

**Front End / Mobile → API → Integration / Middleware → Core System**

## Authentication vs Authorisation

**Authentication:** Who or what is making the request?

**Authorisation:** What is that identity allowed to do?

Authentication proves identity. Authorisation determines permitted action.

## Common Security Controls

- OAuth 2.0 / OpenID Connect where appropriate
- tokens with appropriate scope and lifetime
- TLS encryption in transit
- least privilege
- input validation
- data minimisation
- rate limiting / throttling
- API gateway controls
- logging and monitoring
- secrets management
- versioning and deprecation planning

## Practical Review Questions

1. What business capability does the API support?
2. What data crosses the interface?
3. Who or what authenticates?
4. What permissions are granted?
5. How are secrets protected?
6. Is traffic encrypted?
7. How is input validated?
8. How is abuse limited?
9. What is logged and monitored?
10. What happens when the API changes or fails?

## Evidence Produced

- API specification
- identity/permission design
- architecture or data-flow diagram
- security review
- test evidence
- gateway/log configuration
- version/change record

## Caveat

Encryption alone does not make an API secure. Identity, authorisation, data handling, validation, monitoring and lifecycle management also matter.
