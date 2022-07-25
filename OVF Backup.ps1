WRITE-HOST "***This script is used to backup vms to OVF Files before running make sure you are launching from within Powercli***" -foregroundcolor Green;
Start-sleep -seconds 5
connect-viserver vcenterhostnamehere01 ;

$BackupDestination = Read-Host "Enter in Backup Destination" ;

start-sleep -seconds 5;

get-vm vmhostnamehere01 | export-vapp -destination $BackupDestination -format OVF ;

start-vm vmhostnamehere01

write-host "ExportComplete" ;
