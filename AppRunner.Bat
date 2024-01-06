:: Initiation
@echo off
mode 50,20
Echo.

echo App.exe Runner Starting...
echo.
echo.
timeout /t 1 /nobreak > NUL
echo Checking App.exe...

:: Check if App.exe is running
tasklist /FI "IMAGENAME eq App.exe" 2>NUL | find /I /N "App.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo App.exe is running...
    echo ....Terminating App.exe.
    echo.
    taskkill /F /IM "App.exe" /T
) else (
    echo App.exe is closed.
)
timeout /t 1 /nobreak > NUL
echo.

echo Running App.exe...
start "" "C:\Program Files\4G LTE Modem\App.exe"
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
