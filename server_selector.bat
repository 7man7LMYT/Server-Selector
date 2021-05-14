@ECHO OFF
CLS
ECHO Pick a category!
ECHO 1. PaperMC
ECHO 2. Proxies
ECHO 3. Other
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO Other
IF ERRORLEVEL 2 GOTO Proxies
IF ERRORLEVEL 1 GOTO PaperMC

:PaperMC
ECHO Loading PaperMC Server list..
cd (dir)
paper_server_selector.bat
GOTO End

:Proxies
ECHO Loading Proxy list..
cd (dir)
proxy_server_selector.bat
GOTO End

:Other
ECHO Loading..
cd (dir)
other_server_selector.bat
GOTO End

:End
pause
