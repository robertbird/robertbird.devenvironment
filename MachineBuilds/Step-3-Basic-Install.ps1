 
################################# ESSENTIAL SOFTWARE #######################################

# Chrome
choco install googlechrome -y
Install-ChocolateyPinnedTaskBarItem "$($Boxstarter.programFiles86)\Google\Chrome\Application\chrome.exe"

# Basic editor
choco install notepadplusplus -y

# Dropbox for offline essential installs
choco install dropbox -y

# Update Windows and reboot if necessary
Install-WindowsUpdate -AcceptEula -GetUpdatesFromMS
if (Test-PendingReboot) { Invoke-Reboot }
 
