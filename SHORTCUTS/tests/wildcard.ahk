#Requires AutoHotkey v2.0
#SingleInstance Force


:O:addr::123 Example Street

:*C:DNA::deoxyribonucleic acid
:*C:RNA::ribonucleic acid


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