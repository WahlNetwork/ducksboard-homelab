# Password file
Write-Host -BackgroundColor:Black -ForegroundColor:Yellow "Parsing password file ..."

### Ducksboard
$db_apikey = "!!!API Key!!!"
$db_auth = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($db_apikey + ":nothing"))
$global:db_head = @{"Authorization"="Basic " + $db_auth}
	
### vCenter Server
$global:vc = '!!!Server!!!'
$vc_user = '!!!Username!!!'
$vc_pass = '!!!Password!!!' | ConvertTo-SecureString -AsPlainText -Force
$global:vc_cred = New-Object System.Management.Automation.PSCredential -ArgumentList $vc_user, $vc_pass


### NSX Manager
$global:nsx = '!!!Server!!!'
$nsx_user = '!!!Username!!!'
$nsx_pass = '!!!Password!!!' | ConvertTo-SecureString -AsPlainText -Force
$global:nsx_cred = New-Object System.Management.Automation.PSCredential -ArgumentList $nsx_user, $nsx_pass

Write-Host -BackgroundColor:Black -ForegroundColor:Yellow "Complete."
