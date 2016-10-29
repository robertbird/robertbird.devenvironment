
################################# SOFTWARE #######################################

#Browsers
#choco install googlechrome -y # installed with basic install script
choco install firefox -y

#Other dev tools
choco install fiddler4 -y
#choco install brackets -y
#choco install notepadplusplus -y # installed with basic install script
choco install jdk8 -y
choco install git -y
choco install nodejs.install -y
choco install sourcetree -y
choco install ruby -y
choco install ruby2.devkit -y
choco install python2 -y
choco install tortoisesvn -y
choco install atom -y

#Other essential tools
choco install winrar -y
choco install adobereader -y
#choco install skype -y # installed with basic install script
#choco install dropbox -y # installed with basic install script
choco install windirstat -y
choco install virtualbox -y
#cinst genymotion -y # use Xamarin player instead?
choco install maven -y # This package installs into C:/bin which is too annoying 
choco install join.me -y
choco install clover -y # windows explorer tabs

# Update Windows and reboot if necessary
Install-WindowsUpdate -AcceptEula -GetUpdatesFromMS
if (Test-PendingReboot) { Invoke-Reboot }

# http://jekyll-windows.juthilo.com/3-syntax-highlighting/
# http://romuluscrisan.com/jekyll/2014/03/06/install-jekyll-using-chocolatey.html
#Install python pip 

##########
#$storageDir = "C:\tools\python2\pip"
#md -Force $storageDir
#$webclient = New-Object System.Net.WebClient
#$url = "https://bootstrap.pypa.io/get-pip.py"
#$file = "$storageDir\get-pip.py"
#$webclient.DownloadFile($url,$file)
###########

# Add to path
########
#$oldpath = (Get-ItemProperty -Path ‘Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment’ -Name PATH).path
#$newpath = “$oldpath;C:\tools\python2\scripts”
#Set-ItemProperty -Path ‘Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment’ -Name PATH –Value $newPath
########







