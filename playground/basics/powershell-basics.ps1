# Technology Leadership 101 - PowerShell
# Starting where all serious technology portfolios must begin.

Write-Host "Hello, World!"

# Variables
$Role = "Technology Leader"
$YearsInTechnology = 20

Write-Host "Role: $Role"

# Arrays
$Priorities = @(
    "Strategy",
    "Operations",
    "Cybersecurity",
    "Transformation",
    "AI Governance"
)

# Loops
Write-Host "`nTechnology priorities:"

foreach ($Priority in $Priorities) {
    Write-Host "- $Priority"
}

# Conditions
if ($YearsInTechnology -gt 10) {
    Write-Host "`nStill learning."
}

# Functions
function Get-TechnologyDecision {
    param (
        $Value,
        $Risk
    )

    if ($Value -eq "High" -and $Risk -eq "Low") {
        return "Proceed"
    }

    if ($Value -eq "High" -and $Risk -eq "High") {
        return "Assess controls"
    }

    return "Reconsider"
}

$Decision = Get-TechnologyDecision -Value "High" -Risk "Low"

Write-Host "`nTechnology decision: $Decision"