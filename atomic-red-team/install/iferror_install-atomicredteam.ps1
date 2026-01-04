mkdir C:\AtomicRedTeam
Add-MpPreference -ExclusionPath "C:\AtomicRedTeam"
Get-MpPreference | Select-Object -ExpandProperty ExclusionPath
Install-AtomicRedTeam -InstallPath C:\AtomicRedTeam -GetAtomics -Force
