#=======================================================================#
#	List of API destinations:
#
#	dcs		 	= number of vSphere data centers seen by vCenter
#	clusters 	= number of vSphere clusters seen by vCenter
#	hosts	 	= number of vSphere hosts seen by vCenter
#	vms		 	= number of vSphere VMs seen by vCenter
#	vmotions	= number of vMotions (total)
#
#=======================================================================#

# Snapins
Add-PSSnapin VMware.VimAutomation.Core -ErrorAction:SilentlyContinue

# Creds
Invoke-Expression ($PSScriptRoot + "\creds.ps1")

# Connect to vCenter
Connect-VIServer $global:vc -Credential $global:vc_cred -ErrorAction:Stop

# Set body var
$body = @{}

# vSphere Summary (custom_numeric_boxes4)
$body.Add("dcs",(Get-Datacenter).Count)
$body.Add("clusters",(Get-Cluster).Count)
$body.Add("hosts",(Get-VMHost).Count)
$body.Add("vms",(Get-VM).Count)

# Lab Cluster vMotions (custom_numeric_counter)
$body.Add("vmotions",(Get-Cluster Lab | Get-View).Summary.NumVmotions)	

# Push to API
$bodyjson = $body | ConvertTo-Json
$r = Invoke-WebRequest -Uri 'https://push.ducksboard.com/values/' -Headers $db_head -Body $bodyjson -Method:Post -ContentType "application/json"

# Disconnect from vCenter
Disconnect-VIServer -Confirm:$false