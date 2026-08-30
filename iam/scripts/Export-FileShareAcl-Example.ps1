<#
.SYNOPSIS
    Export reviewable NTFS ACL data from an agreed root path.

.DESCRIPTION
    Generic example based on a practical access-review pattern:
    recurse, inspect, exclude expected platform identities, export CSV,
    and show progress.

    Test against a small path first.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$RootPath,

    [Parameter(Mandatory)]
    [string]$OutputCsv
)

$ExcludedIdentities = @(
    "BUILTIN\Administrators",
    "BUILTIN\Users",
    "BUILTIN\Backup Operators",
    "BUILTIN\Power Users",
    "NT AUTHORITY\SYSTEM"
)

$items = @()
$items += Get-Item -LiteralPath $RootPath
$items += Get-ChildItem -LiteralPath $RootPath -Force -Recurse -ErrorAction SilentlyContinue

$results = [System.Collections.Generic.List[object]]::new()

for ($i = 0; $i -lt $items.Count; $i++) {
    $item = $items[$i]

    $percent = if ($items.Count) {
        [math]::Round((($i + 1) / $items.Count) * 100, 0)
    } else { 100 }

    Write-Progress `
        -Activity "Scanning NTFS permissions" `
        -Status "$($i + 1) of $($items.Count): $($item.FullName)" `
        -PercentComplete $percent

    try {
        $acl = Get-Acl -LiteralPath $item.FullName -ErrorAction Stop

        foreach ($rule in $acl.Access) {
            $identity = $rule.IdentityReference.Value

            if ($ExcludedIdentities -contains $identity) {
                continue
            }

            $results.Add([pscustomobject]@{
                Path              = $item.FullName
                ItemType          = if ($item.PSIsContainer) { "Directory" } else { "File" }
                Identity          = $identity
                AccessType        = $rule.AccessControlType
                Rights            = $rule.FileSystemRights
                IsInherited       = $rule.IsInherited
                InheritanceFlags  = $rule.InheritanceFlags
                PropagationFlags  = $rule.PropagationFlags
            })
        }
    }
    catch {
        $results.Add([pscustomobject]@{
            Path              = $item.FullName
            ItemType          = "ERROR"
            Identity          = ""
            AccessType        = ""
            Rights            = ""
            IsInherited       = ""
            InheritanceFlags  = ""
            PropagationFlags  = $_.Exception.Message
        })
    }
}

Write-Progress -Activity "Scanning NTFS permissions" -Completed

$results |
    Sort-Object Path, Identity |
    Export-Csv -Path $OutputCsv -NoTypeInformation -Encoding UTF8

Write-Host "ACL review exported to $OutputCsv"
