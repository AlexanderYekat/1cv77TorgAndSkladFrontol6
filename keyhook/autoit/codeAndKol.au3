#include <MsgBoxConstants.au3>
; Press Esc to terminate script, Pause/Break to "pause"
Global $g_bPaused = False
;HotKeySet("{PAUSE}", "HotKeyPressed")
;HotKeySet("{F7}", "HotKeyPressed")
HotKeySet("{NUMPADSUB}", "HotKeyPressed")
;HotKeySet("{ESC}", "HotKeyPressed")
;HotKeySet("+!d", "HotKeyPressed") ; Shift-Alt-d
While 1
	$hWndQuant = WinWaitActive("[CLASS:TfrmQuantityInput]")
	$hWnd = WinWaitClose("[CLASS:TfrmQuantityInput]")	
	;ControlCommand("[CLASS:TfrmVisualListWare]",)
	$sControl = ControlGetFocus("[CLASS:TfrmVisualListWare]")
	;MsgBox(4096, 'message', "sdsdsd: " & $sControl)
	if $sControl<>"TcxGridSite1" Then 
		ControlSetText ("[CLASS:TfrmVisualListWare]", "", $sControl, "")
	EndIf
    Sleep(500)
WEnd

Func HotKeyPressed()
	HotKeySet("{NUMPADSUB}")
	Send("{NUMPADSUB}")
	$kol=InputBox("Kol","Kol",1)
	if $kol>1 Then
		Send($kol)
		Send("{F7}")
	EndIf
	HotKeySet("{NUMPADSUB}", "HotKeyPressed")
EndFunc   ;==>HotKeyPressed