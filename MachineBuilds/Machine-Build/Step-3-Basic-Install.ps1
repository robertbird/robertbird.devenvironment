
################################# ESSENTIAL SOFTWARE #######################################

#Browsers
choco install googlechrome -y
#Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFiles86)\Google\Chrome\Application\chrome.exe"


#Other dev tools
choco install notepadplusplus -y

#Other essential tools
choco install dropbox -y
choco install skype -y


# Update Windows and reboot if necessary
Install-WindowsUpdate -AcceptEula -GetUpdatesFromMS
if (Test-PendingReboot) { Invoke-Reboot }
