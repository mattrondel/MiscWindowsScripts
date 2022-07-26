@echo off
echo This will stop spooler service, (optionally) delete ALL print queues then restart spooler service
SET /P cvar=Are you sure you want to continue? Y / N
IF %cvar% == Y GOTO stopspool
IF %cvar% == y GOTO stopspool
IF %cvar% == N GOTO end
IF %cvar% == n GOTO end
:stopspool
echo ---------------
color Oc
echo SPOOLER SERVICE IS STOPPING.
net stop spooler
echo ---------------
SET /P cvar2=Would you like to clear all print queues? y / N
IF %cvar2% == Y GOTO clearqueue
IF %cvar2% == y GOTO clearqueue
IF %cvar2% == N GOTO startspool
IF %cvar2% == n GOTO startspool
:clearqueue
echo ---------------
echo DELETING PRINT QUEUES .....
del /F /Q C:\Windows\System32\spool\PRINTERS*
echo ---------------PRINT QUEUES DELETED ---------------
: startspool
echo ---------------
color 0e
echo STARTING SPOOLER SERVICE
net start spooler
echo ---------------SPOOLER STARTED---------------
: end
color 0a
echo End of batch
pause
