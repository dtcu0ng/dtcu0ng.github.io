color 3f
title Kiem tra ten goi ( Package Name Check ) - Toolkit cho Tencent Gaming Buddy
cls
@ECHO off
echo Kiem tra ten goi ( Package Name Check ) - Toolkit cho Tencent Gaming Buddy
echo Ngay build: 19/07/2019  9:12PM
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo[
echo -------------------------------------------
echo[
echo        An phim bat ky de tiep tuc!
echo              (c) CuongZ
echo[
echo -------------------------------------------
pause
cls
@echo off
echo Kiem tra ten goi ( Package Name ) - Toolkit cho Tencent Gaming Buddy
echo Ngay build: 19/07/2019  9:12PM
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo -----------------------------------------------------------
echo Ban ghi hoat dong:
echo[
echo Ten goi cua cac ung dung da duoc cai dat ben trong gia lap:
cd ..
cd ..
cd ..
bin\adb shell pm list package -3
@echo off
echo -----------------------------------------------------------
echo[
echo Sau khi tim duoc ten goi mong muon, an phim 1 de tiep tuc tao shortcut, an phim 2 de quay lai bang chon chuc nang.
CHOICE /N /C:12 /M "Ban chon:"%1
IF ERRORLEVEL ==2 GOTO SELECTOR
IF ERRORLEVEL ==1 GOTO MKSCT
GOTO MKSCT
:MKSCT
cd bin
cd vi
cd scripts
call MkSctBat.bat
:SELECTOR
cd bin
cd vi
cd scripts
call Selector.bat