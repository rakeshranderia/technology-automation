<#
.SYNOPSIS
    Basic security control audit example.

.DESCRIPTION
    Demonstration script showing how PowerShell can be used
    to perform repeatable security checks.

    This example is designed for portfolio purposes and
    does not make changes to the system.
#>

Write-Host "Starting security control audit..." -ForegroundColor Cyan

$Results = @()

# Check Windows Firewall status
$FirewallProfiles = Get-NetFirewallProfile

foreach ($Profile in $FirewallProfiles) {

    $Results += [PSCustomObject]@{
        Control = "Windows Firewall"
        Area = $Profile.Name
        Status = if ($Profile.Enabled) { "Enabled" } else { "Disabled" }
        Result = if ($Profile.Enabled) { "PASS" } else { "FAIL" }
    }
}

# Check whether Microsoft Defender is available
$Defender = Get-MpComputerStatus -ErrorAction SilentlyContinue

if ($Defender) {

    $Results += [PSCustomObject]@{
        Control = "Microsoft Defender"
        Area = "Antivirus"
        Status = if ($Defender.AntivirusEnabled) { "Enabled" } else { "Disabled" }
        Result = if ($Defender.AntivirusEnabled) { "PASS" } else { "FAIL" }
    }
}

# Display results
$Results | Format-Table -AutoSize

# Export results
$OutputFile = ".\security-control-audit.csv"

$Results | Export-Csv `
    -Path $OutputFile `
    -NoTypeInformation

Write-Host ""
Write-Host "Security audit complete." -ForegroundColor Green
Write-Host "Report created: $OutputFile"