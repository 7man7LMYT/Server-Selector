@echo off
echo Deleting old Paper build...
del server.jar
CLS
ECHO Would you like to reset this test server?
ECHO 1. Yes
ECHO 2. No
ECHO.

CHOICE /C 12 /M "Enter your choice:"

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Yes

:Yes
echo Resetting...
del .console_history
del *.yml
del *.json
del server.properties
rmdir /S /Q "logs"
rmdir /S /Q "plugins"
rmdir /S /Q "world"
rmdir /S /Q "world_nether"
rmdir /S /Q "world_the_end"
echo Server reset, starting..
curl "https://papermc.io/api/v1/paper/1.16.5/latest/download" -o server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
GOTO End

:No
echo Not resetting test server, updating Paper..
curl "https://papermc.io/api/v1/paper/1.16.5/latest/download" -o server.jar
echo Starting Paper 1.16.5..
java -Xmx1024M -Xms1024M -jar server.jar nogui
GOTO End

:End