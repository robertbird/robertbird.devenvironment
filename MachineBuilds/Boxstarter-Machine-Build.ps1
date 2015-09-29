# Boxstarter options
$Boxstarter.RebootOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Basic setup
Update-ExecutionPolicy Unrestricted
Set-ExplorerOptions -showHidenFilesFoldersDrives -showFileExtensions
#Enable-RemoteDesktop
Disable-InternetExplorerESC
#Disable-UAC
#Set-TaskbarSmall

if (Test-PendingReboot) { Invoke-Reboot }

# Install Visual Studio 2013 Professional 
#cinstm visualstudio2013premium -InstallArguments WebTools
#if (Test-PendingReboot) { Invoke-Reboot }

# Visual Studio SDK required for PoshTools extension
#cinstm VS2013SDK
#if (Test-PendingReboot) { Invoke-Reboot }

#cinst DotNet3.5 # Not automatically installed with VS 2013. Includes .NET 2.0. Uses Windows Features to install.
#if (Test-PendingReboot) { Invoke-Reboot }

# VS extensions
#Install-ChocolateyVsixPackage PowerShellTools http://visualstudiogallery.msdn.microsoft.com/c9eb3ba8-0c59-4944-9a62-6eee37294597/file/112013/6/PowerShellTools.vsix
#Install-ChocolateyVsixPackage WebEssentials2013 http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/31/WebEssentials2013.vsix
#Install-ChocolateyVsixPackage T4Toolbox http://visualstudiogallery.msdn.microsoft.com/791817a4-eb9a-4000-9c85-972cc60fd5aa/file/116854/1/T4Toolbox.12.vsix
#Install-ChocolateyVsixPackage StopOnFirstBuildError http://visualstudiogallery.msdn.microsoft.com/91aaa139-5d3c-43a7-b39f-369196a84fa5/file/44205/3/StopOnFirstBuildError.vsix

#Browsers
cinst googlechrome -y
cinst firefox -y

#Other dev tools
cinst fiddler4 -y
cinst brackets -y
cinst notepadplusplus -y
cinst nodejs.install -y
cinst sourcetree -y

#Other essential tools
cinst winrar -y
cinst adobereader -y
cinst skype -y
cinst dropbox -y
cinst windirstat -y
#cinst javaruntime -y

#Not on Choco
# * Cisco VPN
# * Egnyte desktop sync
# * Axure

#cinst Microsoft-Hyper-V-All -source windowsFeatures
cinst IIS-WebServerRole -source windowsfeatures
cinst IIS-HttpCompressionDynamic -source windowsfeatures
cinst IIS-ManagementScriptingTools -source windowsfeatures
cinst IIS-WindowsAuthentication -source windowsfeatures

Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFiles86)\Google\Chrome\Application\chrome.exe"
#Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFiles86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"


# Update Windows and reboot if necessary
Install-WindowsUpdate -AcceptEula
if (Test-PendingReboot) { Invoke-Reboot }
