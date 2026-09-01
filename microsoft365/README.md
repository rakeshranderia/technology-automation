# Microsoft 365 & Graph

This module contains practical Microsoft 365 administration, reporting and telemetry patterns.

The focus is on using Microsoft Graph and PowerShell to make operational tasks more repeatable, observable and easier to evidence.

## Design Pattern

**Need → Permission → Query → Output → Evidence → Review**

The goal is not simply to call an API.

The stronger pattern is to understand:

- what business or operational question is being asked;
- which permissions are actually required;
- what data is returned;
- how the output will be stored or reviewed;
- what limitations apply.

## Module Contents

- [`01-graph-reporting.md`](01-graph-reporting.md)
- [`02-usage-telemetry.md`](02-usage-telemetry.md)
- [`03-operational-administration.md`](03-operational-administration.md)
- [`04-evidence-and-caveats.md`](04-evidence-and-caveats.md)

## Example Scripts

This module can support practical PowerShell examples for:

- Microsoft Graph usage reporting;
- Microsoft 365 operational exports;
- Entra / identity administration;
- repeatable CSV output;
- reporting evidence.

## Scope

Current patterns are grounded in practical Microsoft 365 administration and reporting work, including Microsoft Graph usage-report extraction with `Reports.Read.All`, `Invoke-MgGraphRequest` and CSV output.

## Purpose

This is a practical technical-control and administration reference.

It is not a complete Microsoft 365 administration guide, licensing guide or claim that every Graph workload has been implemented.
