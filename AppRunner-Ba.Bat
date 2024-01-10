:: Initiation
@echo off
mode 45,16
cd /d "%~dp0"
Echo.

:: Intro
Echo AppRunner-Ba Starting...
Echo.
timeout /t 1 /nobreak > NUL

:: Check and Terminate Running App
echo.
echo Checking for running App...
tasklist /FI "IMAGENAME eq App.exe" 2>NUL | find /I /N "App.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo App is currently running, terminating...
    taskkill /F /IM "App.exe" /T
    echo App terminated.
) else (
    echo App is not running.
)
timeout /t 1 /nobreak > NUL
Echo.

:: Run App
echo Launching App...
start "" ".\App.exe"
echo App launched.
Echo.
timeout /t 1 /nobreak > NUL
goto EOF

:: Completion
:EOF
echo.
echo ...Processes Complete.
timeout /t 5 /nobreak > NUL
exit
