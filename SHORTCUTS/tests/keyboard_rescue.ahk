
#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent

; ============================================
; EMERGENCY KEYBOARD RECOVERY
; ============================================

; Keep this script separate from your master AHK.
; Ctrl + Alt + F12 = release keys.

; --- GUI ---
rescueGui := Gui("+AlwaysOnTop +ToolWindow", "AHK Rescue")
rescueGui.SetFont("s10", "Segoe UI")

rescueGui.AddText("w220 Center", "Keyboard Recovery")

releaseBtn := rescueGui.AddButton(
    "w220 h45 Default",
    "RELEASE KEYS"
)
releaseBtn.OnEvent("Click", (*) => ReleaseKeys())

exitBtn := rescueGui.AddButton(
    "w220 h30",
    "Exit Rescue Tool"
)
exitBtn.OnEvent("Click", (*) => ExitApp())

rescueGui.OnEvent("Close", (*) => ExitApp())
rescueGui.Show("AutoSize x20 y20")

; --- Emergency hotkey ---
*^!F12::ReleaseKeys()

; --- Recovery function ---
ReleaseKeys()
{
    ; Disable AHK's input blocking if this script
    ; is responsible for it.
    BlockInput("Off")

    ; Send explicit key-up events.
    keys := [
        "LShift", "RShift",
        "LControl", "RControl",
        "LAlt", "RAlt",
        "LWin", "RWin",
        "Shift", "Ctrl", "Alt",
        "Space", "Enter", "Tab",
        "Escape", "Backspace",
        "Up", "Down", "Left", "Right"
    ]

    for key in keys
        SendEvent("{" key " up}")

    ; Brief visual confirmation.
    ToolTip("Key release events sent")
    SetTimer(() => ToolTip(), -1200)
}
