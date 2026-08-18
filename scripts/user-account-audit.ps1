<#
.SYNOPSIS
    Generates a basic report of user accounts.

.DESCRIPTION
    Demonstration script showing how PowerShell can be used
    to automate operational visibility and reporting.

    This example is intentionally designed for a
    non-production environment.

.NOTES
    Example / Portfolio Script
#>

# Output file
$OutputFile = ".\user-account-audit.csv"

Write-Host "Starting user account audit..." -ForegroundColor Cyan

# Check whether the Active Directory module is available
if (-not (Get-Module -ListAvailable -Name ActiveDirectory)) {
    Write-Host "Active Directory PowerShell module is not installed." -ForegroundColor Yellow
    Write-Host "This demonstration requires the RSAT Active Directory tools."
    exit
}

Import-Module ActiveDirectory

# Retrieve user accounts
$Users = Get-ADUser -Filter * -Properties `
    Enabled,
    LastLogonDate,
    PasswordLastSet,
    Department,
    Title

# Create report
$Report = $Users | Select-Object `
    SamAccountName,
    Name,
    Enabled,
    Department,
    Title,
    LastLogonDate,
    PasswordLastSet

# Export report
$Report | Export-Csv `
    -Path $OutputFile `
    -NoTypeInformation

Write-Host ""
Write-Host "Audit complete." -ForegroundColor Green
Write-Host "Report created: $OutputFile"# User Account Audit

## Purpose

This PowerShell example demonstrates how routine identity administration can be automated to improve visibility and reduce manual effort.

The script retrieves user account information from Active Directory and produces a CSV report.

---

## Business Problem

Regular user account reviews can become time-consuming when performed manually.

Organisations may need visibility of:

- Active accounts
- Disabled accounts
- Last logon activity
- Password age
- Department
- User role

---

## Automated Approach

The script:

1. Checks for the Active Directory PowerShell module
2. Connects to Active Directory
3. Retrieves user accounts
4. Collects selected attributes
5. Generates a structured report
6. Exports the results to CSV

---

## Example Workflow

```text
Active Directory
       ↓
PowerShell
       ↓
User Account Data
       ↓
CSV Report
       ↓
Operational / Security Review