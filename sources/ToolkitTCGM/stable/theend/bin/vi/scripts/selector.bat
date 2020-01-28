color 3f
cls
title Self-check Plugin	
@echo off
echo Self-check Plugin
echo Build date: 14/07/2019
echo Version: 3.5 RC2	
echo Source: https://github.com/CuongZ/ToolkitTCGM_Official	
echo ---------------------------------   	
if exist "bin/adb.exe" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause
exit
)	
if exist "bin/AdbWinApi.dll" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin/nircmd.exe" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit
if exist "bin/reinstall.bat" (	
 echo FOUND	
 echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause
exit
)	
)	
if exist "bin/nircmdc.exe" (	
 echo FOUND	
 echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\vi\scripts\selector.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\vi\scripts\mksctbat.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\vi\scripts\PKGCheck.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\vi\scripts\pkginstaller.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\en\scripts\selector.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\en\scripts\mksctbat.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\en\scripts\PKGCheck.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
if exist "bin\en\scripts\pkginstaller.bat" (	
echo FOUND	
echo ---------------------------------	
) else (	
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please run Toolkit again to re-check files	
echo ---------------------------------	
pause	
exit	
)	
@echo off	
echo Killing current ADB server...	
adb kill-server	
@echo off	
echo Force closing ADB interface...	
taskkill /F /IM adb.exe	
echo Force closing NirCMD	
taskkill /F /IM nircmd.exe	
taskkill /F /IM mksct.exe	
taskkill /F /IM nircmdc.exe	
cls	
title Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy	
cd bin/vi/scripts/	
cls	
@ECHO off	
echo Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy	
echo Ngay build: 28/01/2020  7:30PM	
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_Official
echo[	
echo ---------------------------------------------	
echo[	
echo (1): Trinh cai dat goi	
echo (2): Lam shortcut de vao app nhanh hon	
echo (3): Kiem tra ten goi ( Package Name Check )	
echo (4): Thoat	
echo              (c) dtcu0ng	
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