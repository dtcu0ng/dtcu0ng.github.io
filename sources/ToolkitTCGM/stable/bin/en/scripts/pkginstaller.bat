color 3f
title Package Installer - Toolkit for Tencent Gaming Buddy
cls
@echo off
echo First, you need make sure you've enable USB debugging like in this video: https://youtu.be/ksQB_eniDYU
pause
cls
@echo off
echo Make sure you have downloaded APK to install ! And put it in the same location the file Tookit.exe
pause
cls
@echo off
echo Now you can see your emulator with named ' emulator5554 emulator '?
@echo off
echo If it not displayed, please check the step above again. If it displayed, press any key to continue.
cd ..
cd ..
cd ..
compoments\adb kill-server
compoments\adb devices
pause
cls
set appname= Default
@echo off
echo Please enter your app name! 
set /p appname=
@echo off
echo Now installing your app ( %appname%.apk )
compoments\adb install ./%appname%.apk
@echo off
echo Finished app install ! Enjoy your app !
pause
cd bin/en/scripts
call selector.bat