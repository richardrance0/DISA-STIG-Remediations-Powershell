<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Richard Rance
    LinkedIn        : www.linkedin.com/in/richardrance
    GitHub          : github.com/richardrance0
    Date Created    : 2025-05-27
    Last Modified   : 2025-05-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 2025-05-27
    Tested By       : Richard Rance
    Systems Tested  : RickWin10STIG
    PowerShell Ver. : 5.1.19041.5848

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# Define the registry path and property
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$propertyName = "MaxSize"
$propertyValue = 0x8000  # Hexadecimal 00008000 = Decimal 32768

# Create the registry key if it doesn't exist
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the MaxSize value
New-ItemProperty -Path $regPath -Name $propertyName -Value $propertyValue -PropertyType DWord -Force
