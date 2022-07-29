set-location c:\windows\system32
write-host "Welcome to the windows server activation script" -ForegroundColor yellow
$hostname = Read-Host "enter the computer name you would like to activate"
if($hostname -eq $env:COMPUTERNAME)
	{
		cscript slmgr.vps /ipk 123-ABC-windows-key-here
	}
else
	{
		cscript slmgr.vbs $Hostname /ipk 123-ABC-windows-key-here
	}
