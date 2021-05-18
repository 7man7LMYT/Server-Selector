@ECHO OFF
CLS
ECHO Pick a proxy to start!
ECHO 1. Waterfall
ECHO 2. Geyser Standalone
ECHO 3. Go Back
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO Go-Back
IF ERRORLEVEL 2 GOTO Geyser
IF ERRORLEVEL 1 GOTO Waterfall

:Go-Back
ECHO Going back to previous menu.
cd ..
server_selector.bat
GOTO End

:Waterfall
ECHO Starting Waterfall Test Proxy...
md Waterfall
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/waterfall.bat" -o waterfall.bat
move /y waterfall.bat Waterfall/waterfall.bat
cd Waterfall
waterfall.bat
GOTO End

:Geyser
ECHO Starting Geyser Standalone...
md Geyser
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/geyser.bat" -o geyser.bat
move /y geyser.bat Geyser/geyser.bat
cd Geyser
geyser.bat
GOTO End
pause

:End
pause
