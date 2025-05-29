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

# Define registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"

# Define value name and value
$valueName = "NoControlPanel"      # Example value: disables Control Panel access
$valueData = 1                     # 1 = disable, 0 = enable
$valueType = "DWord"               # Use "String" or "DWord" as needed

# Create the registry path if it does not exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value
New-ItemProperty -Path $regPath -Name $valueName -Value $valueData -PropertyType $valueType -Force | Out-Null

Write-Output "Registry setting applied: $valueName = $valueData at $regPath"

