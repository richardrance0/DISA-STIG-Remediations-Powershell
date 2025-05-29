<#  Author          : Richard Rance
    LinkedIn        : www.linkedin.com/in/richardrance
    GitHub          : github.com/richardrance0
    Date Created    : 2025-05-29
    Last Modified   : 2025-05-29
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000205

.TESTED ON
    Date(s) Tested  : 2025-05-29
    Tested By       : Richard Rance
    Systems Tested  : Windows 10 Pro VM
    PowerShell Ver. : 5.1.19041.5848

.USAGE
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000205).ps1 
#>

# Code starts here:

# Define the registry path
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"

# Check if the path exists, if not, create it
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

# Set the AllowTelemetry value to 1 (Basic)
New-ItemProperty -Path $registryPath -Name "AllowTelemetry" -PropertyType DWord -Value 1 -Force
