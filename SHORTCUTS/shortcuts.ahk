#Requires AutoHotkey v2.0
#SingleInstance Force

; ctrl shift paste to paste with native formatting
!v::Send '^+{v}'

; Always on Top
^SPACE:: WinSetAlwaysOnTop -1, WinExist("A")

; screenshot with snipping tool — comment out if using shareX
;!1::Send("#+s")


; --------------------------------------------------------
; --------------------------------- () [] {} -------------
; --------------------------------------------------------

!'::Send '""{Left}'
![:: Send '[]{Left}'

!]::{
SendText("{}")
Send '{Left}'
}

!9::Send '(){Left}'

; --------------------------------------------------------
; --------------------------------- (copied) -------------
; --------------------------------------------------------


; Alt + Shift + 9
!+9::
{
    ; Wait until both modifiers are physically released.
    KeyWait("Alt")
    KeyWait("Shift")

    ; Insert opening parenthesis.
    SendText("(")

    ; Paste clipboard contents.
    Send("^v")
	Sleep 50

    ; Insert closing parenthesis.
    SendText(")")
}

; Alt + Ctrl + [
!^[::
{
    ; Wait until both modifiers are physically released.
    KeyWait("Alt")
    KeyWait("Ctrl")

    ; Insert opening parenthesis.
    SendText("[")

    ; Paste clipboard contents.
    Send("^v")
	Sleep 50

    ; Insert closing parenthesis.
    SendText("]")
}

; Alt + Shift + [
!+[::
{
    ; Wait until both modifiers are physically released.
    KeyWait("Alt")
    KeyWait("Shift")

    ; Insert opening parenthesis.
    SendText("{")

    ; Paste clipboard contents.
    Send("^v")
	Sleep 50

    ; Insert closing parenthesis.
    SendText("}")
}

; Alt + Ctrl + '
!^'::
{
    ; Wait until both modifiers are physically released.
    KeyWait("Alt")
    KeyWait("Ctrl")

    ; Insert opening parenthesis.
    SendText("'")

    ; Paste clipboard contents.
    Send("^v")
	Sleep 50

    ; Insert closing parenthesis.
    SendText("'")
}

; Alt + Shift + '
!+"::
{
    ; Wait until both modifiers are physically released.
    KeyWait("Alt")
    KeyWait("Shift")

    ; Insert opening parenthesis.
    SendText("'")

    ; Paste clipboard contents.
    Send("^v")
	Sleep 50

    ; Insert closing parenthesis.
    SendText("'")
}