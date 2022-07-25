@echo off
setlocal

REM store current directory. Using separate variable makes it 
REM easier to change behaviour too.
set dir=%cd%

REM call subroutine for each supported extension.
call :do .info
call :do .mp4
call :do .avi
call :do .mkv

REM Main program done.
echo Press a key to close.
pause
exit /b

:do
set ext=%1
REM loop through all files with the given extension.
for /f "tokens=*" %%f in ('dir /b /on "%dir%\*%ext%"') do (
  REM trim the extension and use the base name as directory name.
  setlocal EnableDelayedExpansion
  set thefile=%%~nf
  echo !thefile!
  md "%dir%\!thefile!"
  REM move all files that start with the same base name.
  move "%dir%\!thefile!*.*" "%dir%\!thefile!\"
)
REM exit subroutine
exit /b
