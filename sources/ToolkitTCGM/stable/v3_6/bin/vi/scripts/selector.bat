color 3f
title Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy
cls
@ECHO off
echo Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy
echo Ngay build: 19/07/2019  9:12PM
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo[
echo ---------------------------------------------
echo[
echo (1): Trinh cai dat goi
echo (2): Lam shortcut de vao app nhanh hon
echo (3): Kiem tra ten goi ( Package Name Check )
echo (4): Thoat
echo              (c) CuongZ
echo[
echo ---------------------------------------------
@ECHO OFF
echo[
CHOICE /N /C:1234 /M "Nhap lua chon cua ban tai day:"%1
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