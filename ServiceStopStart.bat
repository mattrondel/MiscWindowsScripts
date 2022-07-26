::This is more sudocode used to stop or restart services, used in the past
:: This is to Start services
net start "servicename listed verbatium in double quotes"
net start "second listed servicename verbatium in double quotes"

:: Kill Services 
taskkill /f /im FileNameExecutable.exe
timeout /t 5
taskkill /f /im FileNameExecutable2.exe
timeout /t 5

:: Start filename if there is no service listed
full/path/to/file/name.exe
timeout /t 5
