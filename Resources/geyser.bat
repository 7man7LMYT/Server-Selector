@echo off
echo Deleting old Geyser build...
del Geyser.jar
CLS
ECHO Would you like to reset Geyser?
ECHO 1. Yes
ECHO 2. No
ECHO.

CHOICE /C 12 /M "Enter your choice:"

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Yes

:Yes
echo Resetting...
del *.yml
rmdir /S /Q "locales"
rmdir /S /Q "logs"
rmdir /S /Q "packs"
echo Server reset, Updating..
curl "https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar" -o Geyser.jar
echo Starting Geyser Standalone..
java -Xmx1024M -Xms1024M -jar Geyser.jar nogui
GOTO End

:No
echo Not resetting Geyser, Updating Geyser Standalone..
curl "https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar" -o Geyser.jar
echo Starting Geyser Standalone..
java -Xmx1024M -Xms1024M -jar Geyser.jar nogui
GOTO End

:End