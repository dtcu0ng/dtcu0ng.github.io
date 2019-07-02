color 3f
title Selector menu - Tookit for Tencent Gaming Buddy
cls
@ECHO off
echo ///////////////////////////////////////////////////////////////////////////////
echo /                    Function menu - Toolkit for TCGM:                        /
echo /                                                                             /
echo /(1): Install package                                                         /
echo /(2): Make shortcut to open app faster                                        /
echo /(3): Exit                                                                    /
echo /                          (c) CuongZ                                         /
echo ///////////////////////////////////////////////////////////////////////////////
@ECHO OFF
CHOICE /N /C:123 /M "Enter your select here:"%1
IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO MKSCT
IF ERRORLEVEL ==1 GOTO INSPKG
GOTO exit
:MKSCT
call mksctbat.bat
:INSPKG
call pkginstaller.bat
:exit
taskkill /F /IM adb.exe
taskkill /F /IM mksct.exe
exit