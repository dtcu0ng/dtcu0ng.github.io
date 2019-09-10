color 3f
title Package Name Check - Toolkit for Tencent Gaming Buddy
cls
@ECHO off
echo Package Name Check - Toolkit for Tencent Gaming Buddy
echo Build date: 19/07/2019  9:12PM
echo Source: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo[
echo -------------------------------------------
echo[
echo        Press any key to continue!
echo              (c) CuongZ
echo[
echo -------------------------------------------
pause
cls
@echo off
echo Package Name Check - Toolkit for Tencent Gaming Buddy
echo Build date: 19/07/2019  9:12PM
echo Source: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo -----------------------------------------------------------
echo Log:
echo[
echo Package name(s) for app(s) installed on emulator:
cd ..
cd ..
cd ..
bin\adb shell pm list package -3
@echo off
echo -----------------------------------------------------------
echo[
echo After you know your package name, press 1 to continue Shortcut Maker or press 2 to go back Selector.
CHOICE /N /C:12 /M "Enter your select here:"%1
IF ERRORLEVEL ==2 GOTO SELECTOR
IF ERRORLEVEL ==1 GOTO MKSCT
GOTO MKSCT
:MKSCT
cd bin
cd en
cd scripts
call MkSctBat.bat
:SELECTOR
cd bin
cd en
cd scripts
call Selector.bat