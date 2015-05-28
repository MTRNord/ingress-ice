@echo off
REM ingress-ice start script by Nikitakun
REM (http://github.com/nibogd/ingress-ice)
REM 
REM From release 2.2 you don't need to edit
REM anything here. Just double-click this 
REM file and follow the instructions

set FILE=%APPDATA%\.ingress_ice
if exists %FILE% (
	echo Existing config file found (%FILE%). Starting ice...
	set /p ARGS=< %FILE%
	phantomjs.exe %ARGS%
	pause
) else (
	echo Ingress ICE, Automatic screenshooter for ingress intel map
	echo Config file not found. We will create one for.
	echo
REM NOT FINISHED!!!
)
set GOOGLELOGIN=changeThisToYourGoogleLogin
set PASSWORD=setThisToYourPassword
set AREA="https://www.ingress.com/intel?ll=35.682398,139.693909&z=11"
set MINLEVEL=1
set MAXLEVEL=8
set DELAY=120
set WIDTH=900
set HEIGHT=500
set FOLDER=.\
set NUMBER=0
set LOGLEVEL=3

phantomjs.exe ice.js %GOOGLELOGIN% %PASSWORD% %AREA% %MINLEVEL% %MAXLEVEL% %DELAY% %WIDTH% %HEIGHT% %FOLDER% %NUMBER% %LOGLEVEL%
pause