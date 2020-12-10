function Green{
  process { Write-Host $_ -ForegroundColor Green }
}

function Red{
  process { Write-Host $_ -ForegroundColor Red }
}

Write-Output "****************************************"
Write-Output "                                        "
Write-Output "This application will create a new local"
Write-Output "user profile and change DNS settings for"
Write-Output "a safer browsing experience."
Write-Output "                                        "
Write-Output "****************************************"
$Username = Read-Host -Prompt 'Input user name'
$Password = Read-Host -AsSecureString -Prompt 'Input password'
$group = "Users"

# Add a user to local users
New-LocalUser $Username -Password $Password -FullName $UserName -Description "This user will be managed by a student"
Add-LocalGroupMember -Group $group -Member $Username
if($?){
  Write-Output "User Creation successful." | Green
} else {
  Write-Output "User Creation failed." | Red
}


# Change DNS settings to point to OpenDNS.
# For more info, check https://bit.ly/3qJKJVt
$interfaces = get-wmiobject win32_networkadapter -filter "netconnectionstatus = 2" | select netconnectionid, name, InterfaceIndex, netconnectionstatus
$index = $interfaces.InterfaceIndex
$params = @{ InterfaceIndex = $index }
Set-DnsClientServerAddress @params -ServerAddresses ("208.67.222.123", "208.67.220.123")
if($?){
  Write-Output "DNS Change successful." | Green
} else {
  Write-Output "DNS Change failed." | Red
}

Read-Host -Prompt "Press Enter to close application."
