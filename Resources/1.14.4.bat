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
del .console_history
del *.yml
del *.json
del server.properties
rmdir /S /Q "C:\Users\gutie\Desktop\Minecraft Test Servers\Paper\1.14.4\logs"
rmdir /S /Q "C:\Users\gutie\Desktop\Minecraft Test Servers\Paper\1.14.4\plugins"
rmdir /S /Q "C:\Users\gutie\Desktop\Minecraft Test Servers\Paper\1.14.4\world"
rmdir /S /Q "C:\Users\gutie\Desktop\Minecraft Test Servers\Paper\1.14.4\world_nether"
rmdir /S /Q "C:\Users\gutie\Desktop\Minecraft Test Servers\Paper\1.14.4\world_the_end"
echo Server reset, starting..
java -Xmx1024M -Xms1024M -jar server.jar nogui
GOTO End

:No
echo Not resetting test server, Starting Paper 1.14.4..
java -Xmx1024M -Xms1024M -jar server.jar nogui
GOTO End

:End