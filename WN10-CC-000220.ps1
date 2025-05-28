<#  Author          : Richard Rance
    LinkedIn        : www.linkedin.com/in/richardrance
    GitHub          : github.com/richardrance0
    Date Created    : 2025-05-28
    Last Modified   : 2025-05-28
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000220

.TESTED ON
    Date(s) Tested  : 2025-05-28
    Tested By       : Richard Rance
    Systems Tested  : Windows 10 Pro VM
    PowerShell Ver. : 5.1.19041.5848
#>

# Code begins here:

# Define registry path and value
$regPath = "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters"
$valueName = "SMB1"
$desiredValue = 0

# Check and create the registry path if it doesn't exist
if (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the SMB1 value to 0 (disabled)
New-ItemProperty -Path $regPath -Name $valueName -Value $desiredValue -PropertyType DWord -Force | Out-Null

Write-Output "SMBv1 has been disabled by setting $valueName to $desiredValue at $regPath."
