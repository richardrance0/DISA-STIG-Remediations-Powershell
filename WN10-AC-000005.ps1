<#
.SYNOPSIS
    The screen saver must be enabled and configured to activate after 15 minutes of user inactivity to enforce session lock.
.NOTES
    Author          : Richard Rance
    LinkedIn        : linkedin.com/in/richardrance/
    GitHub          : github.com/richardrance0
    Date Created    : 2025-05-28
    Last Modified   : 2025-05-28
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005

.TESTED ON
    Date(s) Tested  : 2025-05-28
    Tested By       : Richard Rance
    Systems Tested  : WinRichStigIntern
    PowerShell Ver. : 5.1.19041.5848

.USAGE
    1. Copy the below text into a text editor (e.g., Notepad).

    2. Save the file with a .reg extension, such as __remediation_template(STIG-ID-WN10-AU-000500).reg.

    3. Double-click the file to apply the settings, or deploy via PowerShell.   
    
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>


HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop

