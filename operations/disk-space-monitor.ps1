<#
.SYNOPSIS
    Basic disk space monitoring example.

.DESCRIPTION
    Checks local disk utilisation and identifies volumes
    that are approaching a defined capacity threshold.

    Portfolio demonstration only.
#>

$WarningThreshold = 80
$CriticalThreshold = 90

Write-Host "Starting disk space check..." -ForegroundColor Cyan

$Disks = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"

$Results = foreach ($Disk in $Disks) {

    $UsedSpace = $Disk.Size - $Disk.FreeSpace
    $UsedPercentage = ($UsedSpace / $Disk.Size) * 100

    if ($UsedPercentage -ge $CriticalThreshold) {
        $Status = "CRITICAL"
    }
    elseif ($UsedPercentage -ge $WarningThreshold) {
        $Status = "WARNING"
    }
    else {
        $Status = "OK"
    }

    [PSCustomObject]@{
        Drive = $Disk.DeviceID
        TotalGB = [math]::Round($Disk.Size / 1GB, 2)
        FreeGB = [math]::Round($Disk.FreeSpace / 1GB, 2)
        UsedPercentage = [math]::Round($UsedPercentage, 2)
        Status = $Status
    }
}

$Results | Format-Table -AutoSize

$OutputFile = ".\disk-space-report.csv"

$Results | Export-Csv `
    -Path $OutputFile `
    -NoTypeInformation

Write-Host ""
Write-Host "Disk space check complete." -ForegroundColor Green
Write-Host "Report created: $OutputFile"