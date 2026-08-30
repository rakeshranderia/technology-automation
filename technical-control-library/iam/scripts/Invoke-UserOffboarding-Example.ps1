<#
.SYNOPSIS
    Generic example of a structured user-offboarding workflow.

.DESCRIPTION
    Demonstrates control flow only. Review and test every module before
    production use. Microsoft 365 / Exchange / Teams / SharePoint commands
    vary by tenant, module version and organisational policy.

    Run with -WhatIf first.
#>

[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory)]
    [string]$SamAccountName,

    [string]$DelegateEmail,

    [string]$DisabledUsersOU = "OU=Disabled Users,DC=example,DC=com",

    [string[]]$FileShares = @(),

    [string]$LogPath = ".\Offboarding-$SamAccountName-$(Get-Date -Format yyyyMMdd-HHmmss).log"
)

function Write-Audit {
    param([string]$Message)
    $entry = "{0:u} | {1}" -f (Get-Date), $Message
    $entry | Tee-Object -FilePath $LogPath -Append
}

Import-Module ActiveDirectory

$user = Get-ADUser -Identity $SamAccountName -Properties mail, userPrincipalName, memberOf
Write-Audit "START | $($user.SamAccountName) | $($user.UserPrincipalName)"

if ($PSCmdlet.ShouldProcess($user.SamAccountName, "Disable AD account")) {
    Disable-ADAccount -Identity $user
    Write-Audit "SUCCESS | Disabled AD account"
}

if ($PSCmdlet.ShouldProcess($user.SamAccountName, "Remove non-primary AD group memberships")) {
    $groups = Get-ADPrincipalGroupMembership -Identity $user |
        Where-Object { $_.Name -ne "Domain Users" }

    foreach ($group in $groups) {
        try {
            Remove-ADGroupMember -Identity $group -Members $user -Confirm:$false
            Write-Audit "SUCCESS | Removed AD group | $($group.Name)"
        }
        catch {
            Write-Audit "ERROR | AD group | $($group.Name) | $($_.Exception.Message)"
        }
    }
}

if ($DisabledUsersOU -and $PSCmdlet.ShouldProcess($user.SamAccountName, "Move to Disabled Users OU")) {
    Move-ADObject -Identity $user.DistinguishedName -TargetPath $DisabledUsersOU
    Write-Audit "SUCCESS | Moved account to Disabled Users OU"
}

# Microsoft 365 / Exchange / Teams / SharePoint
# ------------------------------------------------------------
# Connect using your organisation's approved modules and authentication.
# Then perform tenant-specific steps such as:
#
# - block cloud sign-in / revoke sessions where required;
# - remove Microsoft 365 / Entra group memberships;
# - remove licences;
# - remove distribution-list membership;
# - remove mailbox / calendar permissions granted to the user;
# - remove Teams / SharePoint membership;
# - hide mailbox from GAL;
# - convert mailbox to Shared;
# - preserve SELF mailbox permission;
# - remove broad Everyone calendar sharing where policy requires;
# - if $DelegateEmail is populated:
#       grant FullAccess
#       grant SendAs
#
# Each action should be wrapped in try/catch and logged.

foreach ($share in $FileShares) {
    Write-Audit "INFO | File-share remediation in scope | $share"
    # Prefer a reviewed ACL-removal function over broad destructive recursion.
    # Example operational pattern:
    # 1. enumerate ACLs containing the former identity;
    # 2. log matches;
    # 3. remove only confirmed explicit entries;
    # 4. re-read ACL and log result.
}

if ($DelegateEmail) {
    Write-Audit "INFO | Mailbox delegation requested | $DelegateEmail"
}
else {
    Write-Audit "INFO | No mailbox delegate requested"
}

Write-Audit "COMPLETE | Review log for exceptions | $LogPath"

# Optional:
# Send-MailMessage / approved mail API / workflow notification
# containing account, completion status, delegate and log path.
