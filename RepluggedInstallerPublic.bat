echo off
:start
cls

:start

echo Choose Which
echo If this your first time then type Start For instructions to use this.

echo Themes
echo Plugins
echo Install
echo Uninstall
echo Note: If you are installing replugged then run as admin

set /p POWERCORD="What are you installing: " 

cls

goto %POWERCORD%

:Themes
:themes

cd "USER"\replugged\src\Powercord\themes

set /p THEMES="What is the Github Link?: " 

git clone %THEMES%

goto start

:Plugins
:plugins

cd "USER"\replugged\src\Powercord\plugins

set /p PLUGINS="What is the Github Link?: " 

git clone %PLUGINS%

goto start

:install
:Install

echo Which Verson Of Discord
echo Carney
echo Discord
echo if you choose discord leave it blank or it will break.

set /p VERSION="What version?: " 

cd "USER"

git clone https://github.com/replugged-org/replugged
cd replugged
npm i
npm run plug %VERSION%

echo please restart discord %VERSION% to use replugged

goto start

:startup
:startUp
:Startup
:StartUP

echo right click the file and if you cant see the edit button click more options
echo then click control f then the arrow with no line
echo after open command propt copy and paste the C:\Users\THE_USER into replace and type "USER" into find
echo then click replace all if USER is now "USER" in Notepad or Notepad++ then it worked and click control s if not try again
echo you are all done press enter on the file and reopen the file
pause

goto exit

:Uninstall

cd "USER"\replugged
npm run unplug

echo Thank For Using My Program and Replugged Please Restart discord

pause 

:exit

