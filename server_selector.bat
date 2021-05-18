@ECHO OFF
CLS
ECHO Pick a category!
ECHO 1. PaperMC
ECHO 2. Proxies
ECHO 3. Other
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO Other
IF ERRORLEVEL 2 GOTO Proxies
IF ERRORLEVEL 1 GOTO PaperMC

:PaperMC
ECHO Loading PaperMC Server list..
md Paper
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/paper_server_selector.bat" -o paper_server_selector.bat
move /y paper_server_selector.bat /Paper/paper_server_selector.bat
cd Paper
paper_server_selector.bat
GOTO End

:Proxies
ECHO Loading Proxy list..
md Proxies
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/proxy_server_selector.bat" -o proxy_server_selector.bat
move /y proxy_server_selector.bat /Proxies/proxy_server_selector.bat
cd Proxies
proxy_server_selector.bat
GOTO End

:Other
ECHO Loading..
md Other
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/other_server_selector.bat" -o other_server_selector.bat
move /y other_server_selector.bat /Other/other_server_selector.bat
cd Other
other_server_selector.bat
GOTO End

:End
pause