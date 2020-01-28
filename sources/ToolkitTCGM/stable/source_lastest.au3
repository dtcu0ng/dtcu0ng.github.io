#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icon.ico
#AutoIt3Wrapper_Outfile_x64=Toolkit.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=ToolkitTCGM by dtcu0ng
#AutoIt3Wrapper_Res_Description=ToolkitTCGM by dtcu0ng
#AutoIt3Wrapper_Res_Fileversion=5.0.0.1
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_ProductName=ToolkitTCGM
#AutoIt3Wrapper_Res_ProductVersion=5.0.0.0
#AutoIt3Wrapper_Res_CompanyName=dtcu0ng
#AutoIt3Wrapper_Res_LegalCopyright=(c) dtcu0ng
#AutoIt3Wrapper_Res_LegalTradeMarks=(c) dtcu0ng
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=None
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <WindowsConstants.au3>
#include <GUIConstants.au3>
; ToolkitTCGM Loader
; Version: 5
; (c) dtcu0ng. All right reserved.
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
Check_GB_Compoments_ADB()
Check_GB_Compoments_ADBApi()
Check_GB_Compoments_NirCMD()
Check_GB_Compoments_NirCMDc()
Check_GB_Compoment_Reinstall()
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
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/adb.exe", "bin/adb.exe", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_ADBApi()
	Local $sfilepath = "bin/AdbWinApi.dll"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/AdbWinApi.dll", "bin/AdbWinApi.dll", 1, 1)
	EndIf
EndFunc

Func Check_EN_ScriptsInstallPKG()
	Local $sfilepath = "bin/en/scripts/pkginstaller.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/en/scripts/pkginstaller.bat", "bin/en/scripts/pkginstaller.bat", 1, 1)
	EndIf
EndFunc

Func Check_EN_Scripts_MainMenu()
	Local $sfilepath = "bin/en/scripts/selector.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/en/scripts/selector.bat", "bin/en/scripts/selector.bat", 1, 1)
	EndIf
EndFunc

Func Check_EN_Scripts_PkgCheck()
	Local $sfilepath = "bin/en/scripts/PKGCheck.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/en/scripts/PKGCheck.bat", "bin/en/scripts/PKGCheck.bat", 1, 1)
	EndIf
EndFunc

Func Check_EN_Scripts_Mksct()
	Local $sfilepath = "bin/en/scripts/mksctbat.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/en/scripts/mksctbat.bat", "bin/en/scripts/mksctbat.bat", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_NirCMD()
	Local $sfilepath = "bin/nircmd.exe"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/nircmd.exe", "bin/nircmd.exe", 1, 1)
	EndIf
EndFunc

Func Check_GB_Compoments_NirCMDc()
	Local $sfilepath = "bin/nircmdc.exe"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/nircmdc.exe", "bin/nircmdc.exe", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_PkgInstall()
	Local $sfilepath = "bin/vi/scripts/pkginstaller.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/vi/scripts/pkginstaller.bat", "bin/vi/scripts/pkginstaller.bat", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_PkgCheck()
	Local $sfilepath = "bin/vi/scripts/PKGCheck.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/vi/scripts/PKGCheck.bat", "bin/vi/scripts/PKGCheck.bat", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_Mksct()
	Local $sfilepath = "bin/vi/scripts/mksctbat.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
	Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/vi/scripts/mksctbat.bat", "bin/vi/scripts/mksctbat.bat", 1, 1)
	EndIf
EndFunc

Func Check_VN_Scripts_MainMenu()
	Local $sfilepath = "bin/vi/scripts/selector.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
Else
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/vi/scripts/selector.bat", "bin/vi/scripts/selector.bat", 1, 1)
	EndIf
EndFunc
Func Check_GB_Compoment_Reinstall()
	Local $sfilepath = "bin/reinstall.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
Else
		MsgBox(0, "ToolkitTCGM - Loader", " Downloading files from Official Server...", 5)
		InetGet("http://cuongz.github.io/sources/ToolkitTCGM/stable/theend/bin/reinstall.bat", "bin/reinstall.bat", 1, 1)
	EndIf
EndFunc
; End Check Compoments
; End Function Handler

; Load Script.
MsgBox(0, "ToolkitTCGM - Loader", "Check files done! Opening Toolkit in 2 seconds..." & @LF & "Press OK to run Toolkit if not automatic open the script." & @CRLF & "(c) CuongZ", 2)
Func LANGSELECT_ENG()
	Local $sfilepath = "bin/en/scripts/selector.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
    Run(@ComSpec & " /c " & Chr(34) & @ScriptDir & "/bin/en/scripts/selector.bat" & Chr(34), @ScriptDir)
	WinWaitActive ( "Selector menu - Toolkit for Tencent Gaming Buddy", "Waiting script opening...", 2) ; Max timeout. After that timeout user should have this error code: 0x1 ( DEFIND: Cannot download files. Please check Internet connection )
Else
		MsgBox(0, "ToolkitTCGM - Loader", "ERRORCODE: 0x1" & @LF & "Cannot download required file(s). Please check your Internet connection and try re-install the Toolkit again" & @LF & "TIPS: You can use offline version if you can't fix this problem.")
	EndIf
EndFunc

Func LANGSELECT_VN()
	Local $sfilepath = "bin/vi/scripts/selector.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
    Run(@ComSpec & " /c " & Chr(34) & @ScriptDir & "/bin/vi/scripts/selector.bat" & Chr(34), @ScriptDir)
	WinWaitActive ( "Bang chon chuc nang - Toolkit cho Tencent Gaming Buddy", "Waiting script opening...", 2) ; Max timeout. After that timeout user should have this error code: 0x1 ( DEFIND: Cannot download files. Please check Internet connection )
Else
		MsgBox(0, "ToolkitTCGM - Loader", "ERRORCODE: 0x1" & @LF & "Cannot download required file(s). Please check your Internet connection and try re-install the Toolkit again" & @LF & "TIPS: You can use offline version if you can't fix this problem.")
	EndIf
EndFunc

Func CLEAN()
	Local $sfilepath = "bin/reinstall.bat"
	Local $ifileexists = FileExists($sfilepath)
	If $ifileexists Then
    Run(@ComSpec & " /c " & Chr(34) & @ScriptDir & "/bin/reinstall.bat" & Chr(34), @ScriptDir)
	WinWaitActive ( "Reinstall - Toolkit for Tencent Gaming Buddy", "Reinstalling...", 2) ; Max timeout. After that timeout user should have this error code: 0x1 ( DEFIND: Cannot download files. Please check Internet connection )
Else
		MsgBox(0, "ToolkitTCGM - Loader", "ERRORCODE: 0x1" & @LF & "Cannot reinstall because missing required file. Please check your Internet connection and try re-install the Toolkit again")
	EndIf
EndFunc

Func CLOSE()
Run("taskkill /F /IM adb.exe")
Run("taskkill /F /IM mksct.exe")
Run("taskkill /F /IM nircmd.exe")
Run("taskkill /F /IM nircmdc.exe")
Run("taskkill /F /IM Toolkit.exe")
Exit
EndFunc

#Region ### START Koda GUI section ### Form=
Global $Form1 = GUICreate("ToolkitTCGM - Language Select / Chọn ngôn ngữ", 534, 224, -1, -1, BitOR($WS_SYSMENU,$WS_CAPTION,$WS_POPUP,$WS_POPUPWINDOW,$WS_BORDER,$WS_CLIPSIBLINGS))
Global $LangSelect_ENG = GUICtrlCreateButton("English", 135, 80, 75, 25)
GUICtrlSetFont(-1, 9, 400, 0, "Segoe UI")
Global $GUIFunc_Reinstall = GUICtrlCreateButton("Re-install Toolkit", 192, 120, 121, 25)
GUICtrlSetFont(-1, 9, 400, 0, "Segoe UI")
Global $LangSelect_VN = GUICtrlCreateButton("Tiếng Việt", 300, 80, 75, 25)
GUICtrlSetFont(-1, 9, 400, 0, "Segoe UI")
Global $Please = GUICtrlCreateLabel("Please select your language / Hãy chọn bạn muốn sử dụng.", 110, 40, 340, 17)
GUICtrlSetFont(-1, 9, 400, 0, "Segoe UI")
Global $Label1 = GUICtrlCreateLabel("Version 5. (c) dtcu0ng.", 195, 192, 328, 17)
GUICtrlSetFont(-1, 9, 400, 0, "Segoe UI")
Global $Button2 = GUICtrlCreateButton("Full-kill exit app", 200, 160, 100, 25)
GUICtrlSetFont(-1, 9, 400, 0, "Segoe UI")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $LangSelect_ENG
			LANGSELECT_ENG()
		Case $LangSelect_VN
			LANGSELECT_VN()
		Case $GUIFunc_Reinstall
			CLEAN()
		Case $Button2
			CLOSE()
			Exit
		Case $GUI_EVENT_CLOSE
            Exit
	EndSwitch
WEnd

