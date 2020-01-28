@echo off
echo Reinstalling....
echo Killing current Toolkit tasks...
taskkill /F /IM adb.exe
taskkill /F /IM mksct.exe
taskkill /F /IM nircmd.exe
taskkill /F /IM nircmdc.exe
taskkill /F /IM Toolkit.exe
echo Deleting binary files...
start "" /wait cmd /c "echo After this message, Toolkit files will be deleted and you need to re-run Toolkit again to re-download files.&echo((c) dtcuong.&echo(&pause"
RD /S /Q "bin"

