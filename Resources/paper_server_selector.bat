@ECHO OFF
CLS
ECHO Pick a server to start!
ECHO 1. 1.12.2
ECHO 2. 1.13.2
ECHO 3. 1.14.4
ECHO 4. 1.15.2
ECHO 5. 1.16.5
ECHO 6. Go Back
ECHO.

CHOICE /C 123456 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO Go-back
IF ERRORLEVEL 5 GOTO 1.16.5
IF ERRORLEVEL 4 GOTO 1.15.2
IF ERRORLEVEL 3 GOTO 1.14.4
IF ERRORLEVEL 2 GOTO 1.13.2
IF ERRORLEVEL 1 GOTO 1.12.2

:1.12.2
ECHO Starting 1.12.2 Test Server...
md 1.12.2
curl "(url)" -o start.bat
cd 1.12.2
start.bat
GOTO End

:1.13.2
ECHO Starting 1.13.2 Test Server...
md 1.13.2
curl "(url)" -o start.bat
cd 1.13.2
start
GOTO End

:1.14.4
ECHO Starting 1.14.4 Test Server...
md 1.14.4
curl "(url)" -o start.bat
cd 1.14.4
start.bat
GOTO End

:1.15.2
ECHO Starting 1.15.2 Test Server...
md 1.15.2
curl "(url)" -o start.bat
cd 1.15.2
start.bat
GOTO End

:1.16.5
ECHO Starting 1.16.5 Test Server...
md 1.16.5
curl "(url)" -o start.bat
cd 1.16.5
start.bat
GOTO End

:Go-Back
ECHO Going back to previous menu.
cd ..
server_selector.bat
GOTO End

:End
pause