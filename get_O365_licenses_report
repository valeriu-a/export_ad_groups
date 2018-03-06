Connect-MsolService
cd ~\Desktop
Get-MSOLuser -All | select userprincipalname,islicensed,{$_.Licenses.AccountSkuId} | export-csv .\O365LicenseReport-$((Get-Date).ToString('MM-dd-yyyy')).csv -NoTypeInformation
