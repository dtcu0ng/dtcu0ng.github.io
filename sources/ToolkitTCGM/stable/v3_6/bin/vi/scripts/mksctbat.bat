color 3f
title Shortcut Maker - Toolkit cho Tencent Gaming Buddy
cls
@echo off
echo Shortcut Maker cho TCGM
echo Ngay build: 19/07/2019
echo Version: 3.6
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/TookitTCGM_OfficialBuild
echo[
echo Ban ghi hoat dong:
echo[
echo ------------------------------------------------------------------------------------------------------------------------                
if exist "C:\Program Files\txgameassistant\appmarket\AppMarket.exe" (
echo Thanh cong! : Da tim thay AppMarket o C:\Program Files\txgameassistant\appmarket\, an phim bat ky de tiep tuc.
echo ------------------------------------------------------------------------------------------------------------------------
pause
echo ------------------------------------------------------------------------------------------------------------------------                  
goto DEFAULT
) ELSE (
echo Ban ghi hoat dong :
echo Loi: Khong tim thay AppMarket o C:\Program Files\txgameassistant\appmarket\, ban phai tu dien duong dan o buoc tiep.
echo ------------------------------------------------------------------------------------------------------------------------
pause                
goto CUSTOM
)
pause
:DEFAULT
cls
set pkg_name= Default
echo Vui long nhap ten package ( vd com.vng.pubgmobile )
set /p pkg_name=
set sct_name= Default
cls
@echo off
echo Vui long nhap ten cua shortcut ( ten ma ban mong muon xuat hien o Desktop ) 
set /p sct_name=
cd ..
cd ..
nircmd.exe shortcut "C:\Program Files\txgameassistant\AppMarket\AppMarket.exe" "%userprofile%\Desktop\" "%sct_name%" "-startpkg %pkg_name%"
cls
@echo off
echo Shortcut Maker cho TCGM
echo Ngay build: 7/7/2019
echo Version: 3.5
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/TookitTCGM_OfficialBuild
echo[
echo Ban ghi hoat dong:
echo[
echo Da tao shortcut %sct_name% cho ten goi %pkg_name% va them no vao Desktop thanh cong!
pause
cd scripts
call selector.bat
:CUSTOM
cls
set work_dir= Default
@echo off
echo Vui long cung cap duong dan toi folder "txgameassistant"
set /p work_dir=
set pkg_name= Default
cls
@echo off
echo  Vui long nhap ten package ( vd com.vng.pubgmobile ) 
set /p pkg_name=
set sct_name= Default
cls
@echo off
echo Vui long nhap ten cua shortcut ( ten ma ban mong muon xuat hien o Desktop ) 
set /p sct_name=
cd ..
cd ..
nircmd.exe shortcut "%work_dir%\AppMarket\AppMarket.exe" "%userprofile%\Desktop\" "%appname%" "-startpkg %pkg_name%"
cls
@echo off
echo Shortcut Maker cho TCGM
echo Ngay build: 7/7/2019
echo Version: 3.5
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/TookitTCGM_OfficialBuild
echo[
echo Ban ghi hoat dong:
echo[
echo Da tao shortcut %sct_name% cho ten goi %pkg_name% tai folder lam viec %work_dir%\AppMarket\AppMarket.exe va them no vao Desktop thanh cong!
pause
cd vi/scripts
call selector.bat
