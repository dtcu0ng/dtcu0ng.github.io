color 3f
title Trinh cai dat goi - Toolkit cho Tencent Gaming Buddy
cls
@echo off
echo Truoc tien ban hay bat USB Debugging nhu trong video nay: https://youtu.be/ksQB_eniDYU
pause
cls
@echo off
echo Ban hay cho file apk vao thu muc ma ban vua chay Toolkit.exe!
pause
cls
@echo off
echo Trong buoc tiep theo, ban se nhin thay co dong chu ' emulator5554 emulator ' , neu co an phim bat ky de tiep tuc
@echo off
echo Neu khong thay thi ban vui long kiem tra lai cac buoc tren roi khoi dong lai gia lap nhe!
cd ..
cd ..
cd ..
bin\adb kill-server
bin\adb devices
pause
cls
set appname= Default
@echo off
echo Vui long nhap ten file cai dat ban da cho o buoc tren ( khong can them .apk) 
set /p appname=
@echo off
echo Dang cai dat ( %appname%.apk )
bin\adb install ./%appname%.apk
@echo off
echo Da cai dat xong!
pause
cd bin\vi\scripts\
call selector.bat