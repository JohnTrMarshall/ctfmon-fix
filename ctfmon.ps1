# Create a Shortcut with Windows PowerShell
$SourceFileLocation = "$env:SystemRoot\System32\ctfmon.exe"
$ShortcutLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\ctfmon.lnk"
#New-Object : Creates an instance of a Microsoft .NET Framework or COM object.
#-ComObject WScript.Shell: This creates an instance of the COM object that represents the WScript.Shell for invoke CreateShortCut
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
#Save the Shortcut to the TargetPath
$Shortcut.Save()