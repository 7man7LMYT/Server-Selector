@echo off
echo Deleting old Waterfall build...
del waterfall.jar
echo Downloading new Waterfall build...
curl "https://papermc.io/api/v1/waterfall/1.16/latest/download" -o waterfall.jar
CLS
ECHO Reset proxy to default?
ECHO 1. Yes
ECHO 2. No
ECHO.

CHOICE /C 12 /M "Enter your choice:"

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Yes

:Yes
echo Resetting...
del *.yml
rmdir /S /Q "logs"
rmdir /S /Q "modules"
rmdir /S /Q "plugins"
echo Waterfall reset, starting..
java -Xmx1024M -Xms1024M -jar waterfall.jar nogui
GOTO End

:No
echo Not resetting Waterfall, starting as normal..
java -Xmx1024M -Xms1024M -jar waterfall.jar nogui
GOTO End

:End
