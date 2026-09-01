# Technology Automation — Technical Knowledge & Control Library

Practical automation, technical-control and operating patterns across identity, Microsoft 365, secure delivery, resilience, infrastructure, cloud, networks, integrations and lifecycle management.

## Design Principle

**Business Problem → Practical Pattern → Technical Control → Evidence → Outcome**

**Policy says what must happen.  
A technical control makes the expected action repeatable.  
Evidence shows that it happened.**

## Technical Control Modules

| Module | Focus |
|---|---|
| [`iam/`](iam/) | Identity lifecycle, offboarding, access visibility and evidence |
| [`microsoft365/`](microsoft365/) | Graph reporting, telemetry and operational administration |
| [`secure-delivery/`](secure-delivery/) | Source control, testing, release and operational transition |
| [`incident-resilience/`](incident-resilience/) | Incident response, DR validation and post-incident learning |
| [`infrastructure-operations/`](infrastructure-operations/) | Infrastructure administration, lifecycle and operational evidence |
| [`linux-cloud/`](linux-cloud/) | Linux administration and cloud operating controls |
| [`network-itot/`](network-itot/) | Network boundaries, IT/OT integration and vendor access |
| [`integration-data/`](integration-data/) | APIs, integrations, secure data exchange and data lifecycle |
| [`monitoring-observability/`](monitoring-observability/) | Monitoring, logging, alerting and service health |
| [`endpoint-lifecycle/`](endpoint-lifecycle/) | Endpoint provisioning, operation and retirement |
| [`secrets-certificates/`](secrets-certificates/) | Secrets, certificates and service identities |
| [`technical-debt-lifecycle/`](technical-debt-lifecycle/) | Technical debt, EOL and exceptions |

## Supporting Areas

| Area | Purpose |
|---|---|
| [`operations/`](operations/) | Existing operational automation and examples |
| [`security/`](security/) | Existing security automation and examples |
| [`scripts/`](scripts/) | Standalone reusable scripts |
| [`examples/`](examples/) | Simplified technical examples |
| [`playground/`](playground/) | Experiments, learning and proofs of concept |

## Common Module Structure

Where appropriate:

**Problem → Simple Explanation → Practical Pattern → Example Implementation → Evidence Produced → Control Alignment → Caveats**

A script is not automatically a control.

A stronger model is:

**Requirement → Control Owner → Technical Pattern → Evidence → Review → Improvement**

Automation supports the control owner. It does not replace accountability, approval or business judgement.

## Repository Principles

- Start with a real operational or governance problem.
- Automate predictable, low-ambiguity activity.
- Preserve useful evidence.
- Apply controls proportionate to risk.
- Keep human judgement where it belongs.
- Avoid overstating implementation or compliance.

## Purpose

This repository is a practical technical knowledge and automation library.

It demonstrates how technical implementation can support operational consistency, security, governance, evidence, service reliability and technology leadership.

It is not a certification claim, product catalogue, production-ready script library or substitute for organisational policies and procedures.

## Perspective

**A useful technical control makes the expected action repeatable, visible and reviewable.**
