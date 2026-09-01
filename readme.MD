# Technology Automation

Practical automation, scripting and technical-control examples across IT operations, Microsoft 365, identity, security and secure delivery.

The repository is organised around a simple principle:

**Business Problem → Automation → Control → Evidence → Outcome**

Or more simply:

**Policy says what must happen.  
A technical control makes the expected action repeatable.  
Evidence shows that it happened.**

The objective is not to collect scripts for their own sake. The focus is on practical examples that connect technical activity to operational control, governance and evidence.

---

## Current Areas

### Identity & Access Management

Practical identity lifecycle, access visibility, user offboarding and access-review patterns.

Includes:

- user offboarding;
- Active Directory and Microsoft 365 entitlement removal;
- mailbox and delegation handling;
- NTFS ACL visibility;
- evidence and review;
- illustrative ISO/IEC 27001 control mapping.

See: [`iam/README.md`](iam/README.md)

---

### Microsoft 365 & Graph

Practical Microsoft 365 administration, reporting and telemetry patterns using PowerShell and Microsoft Graph.

Includes:

- Microsoft Graph reporting;
- usage telemetry;
- Microsoft 365 operational administration;
- CSV and reporting evidence;
- Graph permission considerations;
- evidence interpretation and caveats.

See: [`microsoft365/README.md`](microsoft365/README.md)

---

### Secure Delivery

Practical delivery controls across source control, environment separation, testing, UAT, change, release, cutover and transition to operations.

Includes:

- source control and environment separation;
- QA and UAT;
- change and release management;
- cutover planning;
- hypercare;
- operational readiness;
- BAU transition;
- delivery evidence.

See: [`secure-delivery/README.md`](secure-delivery/README.md)

---

### Operations

Automation and operating patterns supporting repeatable IT operations.

Examples may include:

- infrastructure administration;
- operational reporting;
- directory and file-system management;
- repeatable maintenance activities;
- service-support automation.

See: [`operations/`](operations/)

---

### Security

Technical examples supporting security administration, monitoring and repeatable control activities.

See: [`security/`](security/)

---

### Scripts

Standalone or reusable scripting examples that do not yet belong to a dedicated control module.

See: [`scripts/`](scripts/)

---

### Examples

Simplified examples demonstrating technical or automation patterns.

See: [`examples/`](examples/)

---

### Playground

Experiments, learning exercises, proofs of concept and code that is not yet mature enough to become a formal module.

See: [`playground/`](playground/)

---

## Technical Control Library Approach

Where appropriate, formal modules follow a common structure:

**Problem → Simple Explanation → Practical Pattern → Example Implementation → Evidence Produced → Control Alignment → Caveats**

This keeps the material focused on the relationship between technology, governance and operational outcomes rather than presenting code without context.

A script is not automatically a control.

A stronger model is:

**Requirement → Control Owner → Technical Pattern → Evidence → Review → Improvement**

Automation supports the control owner. It does not replace accountability, approval or business judgement.

---

## Repository Principles

### Start With the Problem

Automation should address a real operational, security or governance need.

### Make the Expected Action Repeatable

Where manual work is predictable and low ambiguity, automation can reduce inconsistency and missed steps.

### Preserve Evidence

Useful technical controls should leave evidence that can be reviewed later.

Examples include:

- execution logs;
- CSV exports;
- change records;
- completion notifications;
- exception reports;
- review evidence.

### Use Proportionate Controls

Not every task needs heavyweight workflow or enterprise tooling.

The level of control should reflect:

- risk;
- business impact;
- sensitivity;
- complexity;
- reversibility.

### Keep Human Decisions Where They Belong

Automation should not silently make business, legal, risk or access-ownership decisions that require judgement.

---

## Current Technical Control Modules

| Module | Focus |
|---|---|
| IAM | Identity lifecycle, offboarding, access visibility and evidence |
| Microsoft 365 & Graph | Reporting, telemetry and operational administration |
| Secure Delivery | SDLC, source control, testing, release and operational transition |

Additional modules will be added where there is enough practical material to justify them.

---

## Candidate Future Modules

Potential future areas include:

- incident response and operational resilience;
- disaster recovery and recovery validation;
- infrastructure operations;
- Windows and Active Directory administration;
- Linux and cloud operations;
- network and IT/OT controls;
- API and integration governance;
- data lifecycle and secure data exchange;
- monitoring and observability;
- endpoint lifecycle;
- secure configuration;
- backup governance;
- certificate and secrets lifecycle;
- technical debt and end-of-life management.

New modules should be evidence-led rather than created simply to expand the repository.

---

## Related Repositories

### Cybersecurity Framework

Security governance, control architecture, resilience and framework alignment.

https://github.com/rakeshranderia/cybersecurity-framework

### IT Operations Playbook

Technology operating models, service management, governance, metrics and investment practices.

https://github.com/rakeshranderia/it-operations-playbook

### Technology Leadership

Practical leadership and transformation case studies across cybersecurity, AI, business partnering, digital transformation, IT/OT and secure environments.

https://github.com/rakeshranderia/technology-leadership

### AI Governance Framework

AI governance, risk assessment, acceptable use, adoption and implementation patterns.

https://github.com/rakeshranderia/ai-governance-framework

---

## Purpose

This repository is a practical technical knowledge and automation library.

It is intended to demonstrate how technical implementation can support:

- operational consistency;
- access governance;
- security controls;
- evidence generation;
- service reliability;
- delivery governance;
- technology leadership.

It is not:

- an ISO implementation guide;
- a certification claim;
- a product catalogue;
- a production-ready script library;
- a substitute for organisational policies and procedures.

Examples should always be reviewed and adapted before use in a production environment.

---

## Perspective

The strongest automation is not necessarily the most complex.

Useful automation connects:

**A real problem → A repeatable action → A meaningful control → Evidence → A better operational outcome**