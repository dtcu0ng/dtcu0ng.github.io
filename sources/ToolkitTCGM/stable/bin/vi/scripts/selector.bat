color 3f
title Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy
cls
@ECHO off
echo Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy
echo Ngay build: 2/7/2019  9:12PM
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo[
echo -------------------------------------------
echo (1): Trinh cai dat goi
echo (2): Lam shortcut de vao app nhanh hon
echo (3): Thoat
echo              (c) CuongZ
echo -------------------------------------------
@ECHO OFF
echo[
CHOICE /N /C:123 /M "Nhap lua chon cua ban tai day:"%1
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