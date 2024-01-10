@echo off

:: Initiation
mode 45,17
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
echo Checking For App...
if exist ".\App.exe" (
    echo ...App Located...
	start "" ".\App.exe"
    echo ...App Executed!
) else (
    echo ...App Missing!
	echo 1. Check name of App is correct.
	echo 2. AppRunner-Ba in same folder.
    )
)
Echo.
timeout /t 1 /nobreak > NUL
goto EOF

:: Completion
:EOF
echo.
echo ...Processes Complete.
timeout /t 5 /nobreak > NUL
exit
