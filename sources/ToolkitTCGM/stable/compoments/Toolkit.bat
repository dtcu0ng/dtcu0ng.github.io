color 3f
title Toolkit for Tencent Gaming Buddy - Version 2.0 AUTOIT ( 3.0-alpha )
mode 107,27
cls
@echo off
echo Run-Test Plugin
echo Build date: 30/6/2019
echo Version: 2.0 
echo Source: htps://github.com/CuongZ/Source-TookitTCGM
echo ---------------------------------   
if exist "compoments\adb.exe" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "compoments\AdbWinApi.dll" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "compoments\nircmd.exe" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "compoments\nircmdc.exe" (
 echo FOUND
 echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "compoments\scripts\selector.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "compoments\scripts\mksctbat.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "compoments\scripts\pkginstaller.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
@echo off
echo Killing current ADB server...
compoments\adb kill-server
@echo off
echo Force closing ADB interface...
taskkill /F /IM adb.exe
echo Force closing NirCMD
taskkill /F /IM nircmd.exe
taskkill /F /IM mksct.exe
taskkill /F /IM nircmdc.exe
cls
@echo off
echo -------------------------------------------------------------------------------
echo Toolkit for Tencent Gaming Buddy
echo Build date: 2/7/2019  9:12PM
echo Source: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo -------------------------------------------------------------------------------
echo (c) Made by CuongZ. Version 3.2 AutoIT
echo Github : https://github.com/CuongZ
echo Facebook : https://facebook.com/dtcuong0109 
echo Press any key to start!
echo -------------------------------------------------------------------------------
pause
cd compoments\scripts\
call selector.bat