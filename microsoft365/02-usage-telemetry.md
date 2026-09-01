# 02 — Usage Telemetry

## Problem

Licence assignment does not prove that a technology capability is being adopted or creating value.

Organisations need evidence that helps distinguish:

- availability;
- initial experimentation;
- repeat usage;
- meaningful adoption;
- business value.

## Simple Explanation

Usage telemetry is one input into an adoption decision.

A practical pattern is:

**Telemetry + User Feedback + Use Case + Outcome = Better Adoption Evidence**

Telemetry alone should not be treated as proof of productivity or value.

## Practical Pattern

### 1. Capture Repeatable Usage Data

Microsoft 365 usage reports can provide repeatable tenant-level or user-level signals depending on the endpoint.

### 2. Compare Over Time

Useful questions include:

- Are people returning to the service?
- Is usage increasing or declining?
- Which workloads appear consistently active?
- Does observed usage align with intended use cases?

### 3. Combine Quantitative and Qualitative Evidence

Telemetry should be considered alongside:

- user feedback;
- training feedback;
- support requests;
- identified use cases;
- workflow outcomes;
- quality observations.

### 4. Avoid Overclaiming

A Microsoft 365 usage report should not be presented as proof of Copilot-specific adoption unless the underlying report explicitly measures Copilot usage.

For example, `getM365AppUserDetail(period='D7')` supports Microsoft 365 application-usage analysis, but should be described according to what that report actually returns.

## Example Use

The reporting pattern can support questions such as:

- whether active and repeat usage is increasing;
- which Microsoft 365 workloads are being used;
- whether broader rollout warrants investigation;
- where more targeted adoption support may be needed.

## Evidence Produced

- periodic CSV exports;
- usage trends;
- comparison tables;
- adoption observations;
- review notes.

## Control Alignment

Usage telemetry can support technology adoption, service management, licence optimisation, governance and decision-evidence objectives.

## Caveats

Usage does not equal:

- productivity;
- quality;
- risk reduction;
- user satisfaction;
- business value.

**Telemetry is evidence of behaviour, not automatically evidence of outcome.**
