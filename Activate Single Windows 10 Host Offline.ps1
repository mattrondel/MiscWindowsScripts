Set-Location c;\Windows\System32\
Write-host "Welcome to the Windows 10 activation script" -ForegroundColor Yellow
$hostname = Read-Host "Enter the computer name you would like to activate"
cscript c:\Windows\System32\slmgr.vbs $hostname /ipk 4 1234-ABCD-WINDOWS-10-KEY-HERE
