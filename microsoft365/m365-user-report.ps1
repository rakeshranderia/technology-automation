<#
.SYNOPSIS
    Microsoft 365 user reporting example.

.DESCRIPTION
    Demonstration of using Microsoft Graph PowerShell
    to retrieve basic user information.

    This is a portfolio example and is not configured
    for a specific production tenant.
#>

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.Read.All"

Write-Host "Retrieving Microsoft 365 users..." -ForegroundColor Cyan

# Retrieve users
$Users = Get-MgUser -All -Property `
    DisplayName,
    UserPrincipalName,
    AccountEnabled,
    Department,
    JobTitle

# Select reporting fields
$Report = $Users | Select-Object `
    DisplayName,
    UserPrincipalName,
    AccountEnabled,
    Department,
    JobTitle

# Export report
$OutputFile = ".\m365-user-report.csv"

$Report | Export-Csv `
    -Path $OutputFile `
    -NoTypeInformation

Write-Host ""
Write-Host "Report generated successfully." -ForegroundColor Green
Write-Host "Output: $OutputFile"