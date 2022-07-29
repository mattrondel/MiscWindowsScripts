#Multiple Windows 10 hosts, add hostnames to external file: computers.txt
Write-host "Welcome to the Windows 10 activation script" -ForegroundColor Yellow
Start-process notepad.exe -ArgumentList .\Computers.txt -Wait
$Computers = Get-Content .\Computers.txt
ForEach($Computer in $Computers) {
		Write-Host "Attempting to Activate $Computer" -ForegroundColor Cyan
		cscript c:\Windows\System32\slmgr.vbs $Computer /ipk 4
		1234-ABCD-WINDOWS-10-KEY-HERE
}
Pause
