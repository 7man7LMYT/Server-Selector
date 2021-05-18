@ECHO OFF
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
del *.yml
del *.json
del server.properties
rmdir /S /Q "logs"
rmdir /S /Q "plugins"
rmdir /S /Q "world"
rmdir /S /Q "world_nether"
rmdir /S /Q "world_the_end"
echo Server reset, starting..
curl "https://papermc.io/api/v1/paper/1.12.2/latest/download" -o server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
GOTO End

:No
echo Not resetting test server, Starting Paper 1.12.2..
curl "https://papermc.io/api/v1/paper/1.12.2/latest/download" -o server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
GOTO End

:End