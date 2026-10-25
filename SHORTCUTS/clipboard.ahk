#Requires AutoHotkey v2.0
#SingleInstance Force

; ============================================
; CLIPBOARD HISTORY
; ============================================

global ClipboardHistory := []
global MaxClipboardHistory := 10

; Monitor clipboard changes.
OnClipboardChange(TrackClipboard)

TrackClipboard(dataType)
{
    global ClipboardHistory, MaxClipboardHistory

    ; Only record text clipboard contents.
    if (dataType != 1)
        return

    text := A_Clipboard

    if (text = "")
        return

    ; Ignore consecutive duplicates.
    if (ClipboardHistory.Length > 0
        && ClipboardHistory[1] = text)
        return

    ; Add the newest item at the beginning.
    ClipboardHistory.InsertAt(1, text)

    ; Keep only the most recent 10 entries.
    if (ClipboardHistory.Length > MaxClipboardHistory)
        ClipboardHistory.Pop()
}

; ============================================
; PASTE PREVIOUS CLIPBOARD ENTRIES
; ============================================

!1::PasteHistory(2)
!2::PasteHistory(3)
!3::PasteHistory(4)
!4::PasteHistory(5)
!5::PasteHistory(6)

PasteHistory(index)
{
    global ClipboardHistory

    if (index > ClipboardHistory.Length)
    {
        ToolTip("No clipboard entry available")
        SetTimer(() => ToolTip(), -1000)
        return
    }

    ; Wait for Alt to be released.
    KeyWait("Alt")

    ; Paste the saved text without modifying
    ; the current clipboard.
    SendText(ClipboardHistory[index])
}