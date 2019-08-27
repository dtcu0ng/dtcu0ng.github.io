#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icon.ico
#AutoIt3Wrapper_Outfile_x64=Toolkit.Exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=Toolkit4TCGM
#AutoIt3Wrapper_Res_Description=Toolkit4TCGM
#AutoIt3Wrapper_Res_Fileversion=3.7.1.0
#AutoIt3Wrapper_Res_ProductName=Toolkit4TCGM
#AutoIt3Wrapper_Res_ProductVersion=3.7.1.0
#AutoIt3Wrapper_Res_CompanyName=CuongZ
#AutoIt3Wrapper_Res_LegalCopyright=(c) CuongZ. All right reserved.
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=None
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; ToolkitTCGM Loader
; Version: 3.8
; (c) CuongZ. All right reserved.
; Source: https://github.com/CuongZ/AutoIT_Stuff/
; Use this to Check/Download Toolkit's Compoments
; --------------------------------------------------
; Function List
Check_GB_RootFolder()
Check_EN_RootFolder()
Check_EN_ScriptsFolder()
Check_EN_ScriptsInstallPKG()
Check_EN_Scripts_MainMenu()
Check_EN_Scripts_Mksct()
Check_EN_Scripts_PkgCheck()
Check_VN_RootFolder()
Check_VN_ScriptsFolder()
Check_VN_Scripts_Mksct()
Check_VN_Scripts_MainMenu()
Check_VN_Scripts_PkgCheck()
Check_VN_Scripts_PkgInstall()
Check_GB_Compoments_Script()
Check_GB_Compoments_ADB()
Check_GB_Compoments_ADBApi()
Check_GB_Compoments_NirCMD()
Check_GB_Compoments_NirCMDc()
; End Function List.

; Function Handler:

; Check All Compoments.
Func Check_GB_RootFolder()
	Local $sfilepath = "bin/"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		DirCreate("bin/")
	EndIf
EndFunc

Func Check_VN_RootFolder()
	Local $sfilepath = "bin/vi/"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		DirCreate("bin/vi/")
	EndIf
EndFunc

Func Check_VN_ScriptsFolder()
	Local $sfilepath = "bin/vi/scripts/"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		DirCreate("bin/vi/scripts/")
	EndIf
EndFunc

Func Check_EN_RootFolder()
	Local $sfilepath = "bin/en/"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		DirCreate("bin/en/")
	EndIf
EndFunc

Func Check_EN_ScriptsFolder()
	Local $sfilepath = "bin/en/scripts/"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		DirCreate("bin/en/scripts/")
	EndIf
EndFunc

Func Check_GB_Compoments_ADB()
	Local $sfilepath = "bin/adb.exe"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/adb.exe", "bin/adb.exe", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_Script()
	Local $sfilepath = "bin/Toolkit.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/Toolkit.bat", "bin/Toolkit.bat", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_ADBApi()
	Local $sfilepath = "bin/AdbWinApi.dll"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/AdbWinApi.dll", "bin/AdbWinApi.dll", 1, 1)
	EndIf
EndFunc

Func Check_EN_ScriptsInstallPKG()
	Local $sfilepath = "bin/en/scripts/pkginstaller.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/en/scripts/pkginstaller.bat", "bin/en/scripts/pkginstaller.bat", 1, 1)
	EndIf
EndFunc

Func Check_EN_Scripts_MainMenu()
	Local $sfilepath = "bin/en/scripts/selector.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/en/scripts/selector.bat", "bin/en/scripts/selector.bat", 1, 1)
	EndIf
EndFunc

Func Check_EN_Scripts_PkgCheck()
	Local $sfilepath = "bin/en/scripts/PKGCheck.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/en/scripts/PKGCheck.bat", "bin/en/scripts/PKGCheck.bat", 1, 1)
	EndIf
EndFunc

Func Check_EN_Scripts_Mksct()
	Local $sfilepath = "bin/en/scripts/mksctbat.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/en/scripts/mksctbat.bat", "bin/en/scripts/mksctbat.bat", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_NirCMD()
	Local $sfilepath = "bin/nircmd.exe"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/nircmd.exe", "bin/nircmd.exe", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_NirCMDc()
	Local $sfilepath = "bin/nircmdc.exe"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/nircmdc.exe", "bin/nircmdc.exe", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_PkgInstall()
	Local $sfilepath = "bin/vi/scripts/pkginstaller.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/vi/scripts/pkginstaller.bat", "bin/vi/scripts/pkginstaller.bat", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_PkgCheck()
	Local $sfilepath = "bin/vi/scripts/PKGCheck.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/vi/scripts/PKGCheck.bat", "bin/vi/scripts/PKGCheck.bat", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_Mksct()
	Local $sfilepath = "bin/vi/scripts/mksctbat.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/vi/scripts/mksctbat.bat", "bin/vi/scripts/mksctbat.bat", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_MainMenu()
	Local $sfilepath = "bin/vi/scripts/selector.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
Else
		MsgBox(0, "ToolkitTCGM - Loader", " Downloading files from Official Server...", 5)
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/v3_7/bin/vi/scripts/selector.bat", "bin/vi/scripts/selector.bat", 1, 1)
	EndIf
EndFunc
; End Check Compoments
; End Function Handler

; Load Script.
MsgBox(0, "ToolkitTCGM - Loader", "Check files done! Opening Toolkit in 2 seconds..." & @LF & "Press OK to run Toolkit if not automatic open the script." & @CRLF & "(c) CuongZ", 2)
AFTERCHECK()
Func AFTERCHECK()
	Local $sfilepath = "bin/Toolkit.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
    Run(@ComSpec & " /c " & Chr(34) & @ScriptDir & "/bin/Toolkit.bat" & Chr(34), @ScriptDir)
	WinWait ( "Toolkit for Tencent Gaming Buddy - Version 3.7", "Waiting script opening...", 2) ; Max timeout. After that timeout user should have this error code: 0x1 ( DEFIND: Cannot download files. Please check Internet connection )
Else
		MsgBox(0, "ToolkitTCGM - Loader", "ERRORCODE: 0x1" & @LF & "Cannot download required file(s). Please check your Internet connection and try launch the Toolkit again" & @LF & "TIPS: You can use offline version if you can't fix this problem.")
	EndIf
EndFunc
; End load script.
