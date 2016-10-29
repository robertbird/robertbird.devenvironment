# Boxstarter options
$Boxstarter.RebootOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot


########## VS 2013 ####################

# Install Visual Studio 2013 Professional 
#cinstm visualstudio2013premium -InstallArguments WebTools
#if (Test-PendingReboot) { Invoke-Reboot }

# VS 2013 extensions
#Install-ChocolateyVsixPackage PowerShellTools http://visualstudiogallery.msdn.microsoft.com/c9eb3ba8-0c59-4944-9a62-6eee37294597/file/112013/6/PowerShellTools.vsix
#Install-ChocolateyVsixPackage WebEssentials2013 http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/31/WebEssentials2013.vsix
#Install-ChocolateyVsixPackage T4Toolbox http://visualstudiogallery.msdn.microsoft.com/791817a4-eb9a-4000-9c85-972cc60fd5aa/file/116854/1/T4Toolbox.12.vsix
#Install-ChocolateyVsixPackage StopOnFirstBuildError http://visualstudiogallery.msdn.microsoft.com/91aaa139-5d3c-43a7-b39f-369196a84fa5/file/44205/3/StopOnFirstBuildError.vsix


########## VS 2013 ####################


# Install Visual Studio 2015 Professional 
# This is currently a pre-release version and needs to be updated once moderated.
choco install VisualStudio2015Enterprise -y -InstallArguments WebTools -version 14.0.23107.0 -pre

### VS extensions

# TFS power tools
#resharper
choco install resharper -version 9.2.0.0 -y 
Install-ChocolateyVsixPackage VS2015TFSPowerTools https://visualstudiogallery.msdn.microsoft.com/898a828a-af00-42c6-bbb2-530dc7b8f2e1/file/177107/1/tfpt.msi

# Specbind

# Web essentials

#Install-ChocolateyVsixPackage PowerShellTools http://visualstudiogallery.msdn.microsoft.com/c9eb3ba8-0c59-4944-9a62-6eee37294597/file/112013/6/PowerShellTools.vsix
#Install-ChocolateyVsixPackage WebEssentials2013 http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/31/WebEssentials2013.vsix
#Install-ChocolateyVsixPackage T4Toolbox http://visualstudiogallery.msdn.microsoft.com/791817a4-eb9a-4000-9c85-972cc60fd5aa/file/116854/1/T4Toolbox.12.vsix
#Install-ChocolateyVsixPackage StopOnFirstBuildError http://visualstudiogallery.msdn.microsoft.com/91aaa139-5d3c-43a7-b39f-369196a84fa5/file/44205/3/StopOnFirstBuildError.vsix


