

if($args.count -ne 3)
{
	Write-Host "Error: expecting 3 arguments: vpnName, userName, passCode" -foregroundcolor "red"
}

$vpnName = $args[0]
$userName = $args[1]
$passCode = $args[2]

$token = & "C:\Program Files\CRYPTOCard\BlackShield ID\Software Tools\tokenCLI.exe" -p $passCode -n $userName

Write-Host "Connecting for user: $userName with token: $token"

rasdial $vpnName $userName $token

