:: Initiation
@echo off
mode 50,20
Echo.

echo AppRunner-Ba Starting...
echo.
echo.
timeout /t 1 /nobreak > NUL
echo Checking App...

:: Check if App.exe is running
tasklist /FI "IMAGENAME eq App.exe" 2>NUL | find /I /N "App.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo App.exe is running...
    echo ....Terminating App.
    echo.
    taskkill /F /IM "App" /T
) else (
    echo App.exe is closed.
)
timeout /t 1 /nobreak > NUL
echo.

echo Running App...
start "" "C:\PATH TO YOUR PROGRAM\App.exe"
echo ...App.exe Executed.
timeout /t 1 /nobreak > NUL
goto EOF

:EOF
echo.
echo.
echo ...Script Is Complete.
echo.
timeout /t 2 /nobreak > NUL
exit
