Import-Module activedirectory
Set-Location ~\Desktop
$ADGroup = Read-Host 'What is the AD Group Name?'

Get-ADGroupmember $ADGroup | Get-ADUser -Properties * | Select-Object samaccountName,Name,Mail,Office,Enabled,userprincipalname | Export-CSV ExportedADGroupMembers.csv -NoTypeInformation
