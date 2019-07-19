color 3f
title Selector menu - Toolkit for Tencent Gaming Buddy
cls
@ECHO off
echo Function menu - Toolkit for TCGM
echo Build date: 19/07/2019
echo Source: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo[
echo -------------------------------------------
echo[
echo (1): Install package
echo (2): Make shortcut to open app faster
echo (3): Package Name Check
echo (4): Exit
echo              (c) CuongZ
echo[
echo -------------------------------------------
@ECHO OFF
echo[
CHOICE /N /C:1234 /M "Enter your select here:"%1
IF ERRORLEVEL ==4 GOTO EXIT
IF ERRORLEVEL ==3 GOTO PKGCHECK
IF ERRORLEVEL ==2 GOTO MKSCT
IF ERRORLEVEL ==1 GOTO INSPKG
GOTO exit
:MKSCT
call mksctbat.bat
:INSPKG
call pkginstaller.bat
:PKGCHECK
call PKGCheck.bat
:exit
taskkill /F /IM adb.exe
taskkill /F /IM mksct.exe
taskkill /F /IM nircmd.exe
taskkill /F /IM nircmdc.exe
taskkill /F /IM Toolkit.exe
exit