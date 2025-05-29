<#  Author          : Richard Rance
    LinkedIn        : www.linkedin.com/in/richardrance
    GitHub          : github.com/richardrance0
    Date Created    : 2025-05-28
    Last Modified   : 2025-05-28
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 2025-05-28
    Tested By       : Richard Rance
    Systems Tested  : Windows 10 Pro VM
    PowerShell Ver. : 5.1.19041.5848

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# Code starts here:

# Define the registry path and values
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"
$valueName = "NoLockScreenCamera"
$valueData = 1

# Create the registry path if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value
New-ItemProperty -Path $regPath -Name $valueName -Value $valueData -PropertyType DWord -Force | Out-Null

Write-Output "Camera on lock screen has been disabled (NoLockScreenCamera = 1)."
