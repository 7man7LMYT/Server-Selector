@ECHO OFF
CLS
ECHO Pick an option to start!
ECHO 1. Glowstone
ECHO 2. VIAaaS
ECHO 3. Go Back
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO Go-Back
IF ERRORLEVEL 2 GOTO VIAaas
IF ERRORLEVEL 1 GOTO Glowstone

:Glowstone
ECHO Starting Glowstone Test Server...
md Glowstone
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/Glowstone.bat" -o Glowstone.bat
move /y Glowstone.bat /Glowstone/Glowstone.bat
cd Glowstone
Glowstone.bat
GOTO End

:VIAaaS
ECHO Starting VIAaaS...
md VIAaaS
curl "https://raw.hithubusercontent.com/7man7LMYT/Server-Selector/main/Resources/VIAaaS.bat" -o VIAaaS.bat
move /y VIAaaS.bat /VIAaaS/VIAaaS.bat
cd VIAaaS
VIAaaS.bat
GOTO End

:Go-Back
ECHO Going back to previous menu.
cd ..
server_selector.bat
GOTO End

:End
pause