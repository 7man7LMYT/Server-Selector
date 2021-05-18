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
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/1.12.2.bat" -o 1.12.2.bat
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/eula.txt" -o eula.txt
move /y eula.txt 1.12.2/eula.txt
move /y 1.12.2.bat 1.12.2/1.12.2.bat
cd 1.12.2
1.12.2.bat
GOTO End

:1.13.2
ECHO Starting 1.13.2 Test Server...
md 1.13.2
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/1.13.2.bat" -o 1.13.2.bat
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/eula.txt" -o eula.txt
move /y eula.txt 1.13.2/eula.txt
move /y 1.13.2.bat 1.13.2/1.13.2.bat
cd 1.13.2
1.13.2.bat
GOTO End

:1.14.4
ECHO Starting 1.14.4 Test Server...
md 1.14.4
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/1.14.4.bat" -o 1.14.4.bat
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/eula.txt" -o eula.txt
move /y eula.txt 1.14.4/eula.txt
move /y 1.14.4.bat 1.14.4/1.14.4.bat
cd 1.14.4
1.14.4.bat
GOTO End

:1.15.2
ECHO Starting 1.15.2 Test Server...
md 1.15.2
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/1.15.2.bat" -o 1.15.2.bat
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/eula.txt" -o eula.txt
move /y eula.txt 1.15.2/eula.txt
move /y 1.15.2.bat 1.15.2/1.15.2.bat
cd 1.15.2
1.15.2.bat
GOTO End

:1.16.5
ECHO Starting 1.16.5 Test Server...
md 1.16.5
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/1.16.5.bat" -o 1.16.5.bat
curl "https://raw.githubusercontent.com/7man7LMYT/Server-Selector/main/Resources/eula.txt" -o eula.txt
move /y eula.txt 1.16.5/eula.txt
move /y 1.16.5.bat 1.16.5/1.16.5.bat
cd 1.16.5
1.16.5.bat
GOTO End

:Go-Back
ECHO Going back to previous menu.
cd ..
server_selector.bat
GOTO End

:End
pause
