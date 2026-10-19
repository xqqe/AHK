# AutoHotkey Scripts

**A personal collection of Windows automation scripts for keyboard shortcuts, text expansion, repetitive workflows, window control, and desktop utilities.**

![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v2-334455)
![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?logo=windows)
![Type](https://img.shields.io/badge/Project-Automation%20Toolkit-666666)

This repository collects small, purpose-built [AutoHotkey](https://www.autohotkey.com/) scripts written to eliminate repetitive interactions, speed up text entry, streamline application-specific workflows, and make common Windows tasks more convenient.

The scripts are independent utilities rather than one application. Most are written for **AutoHotkey v2** and can be used or adapted individually.

## What's included

| Area | Examples | Description |
| --- | --- | --- |
| **Keyboard shortcuts** | `honey_hotkeys.ahk`, `honey_hotkeys2.ahk` | Special characters, text insertion, bracket wrapping, dates, and window controls |
| **Text input** | `emdash.ahk`, `todaysdate.ahk` | Typing conveniences such as replacing double hyphens with an em dash and inserting formatted dates |
| **Batch automation** | `vector_renaming.ahk`, `xence/` | Application-specific keyboard sequences, text capture, and repetitive naming actions |
| **Desktop utilities** | `win_opacity.ahk`, `performance_overlay*.ahk` | Window transparency and lightweight system-monitor overlays |
| **Keyboard diagnostics** | `keydisplay*.ahk`, `VK_code_tooltip.ahk`, `keyrelease.ahk` | View pressed keys, identify virtual-key codes, and investigate input behavior |
| **Text playback experiments** | `wiggler/` | Controlled, character-by-character text entry from files |

## Getting started

1. Install [AutoHotkey v2](https://www.autohotkey.com/).
2. Clone this repository:
   ```powershell
   git clone https://github.com/xqqe/ahk.git
   ```
3. Open the script you want to use in a text editor and review its hotkeys, paths, and application assumptions.
4. Double-click the `.ahk` file or run it through the AutoHotkey v2 executable.

> **Important:** These scripts reflect a particular desktop setup. Some reference local Windows paths, application executables, screen coordinates, or specific tab sequences. They are examples to adapt, not universally portable plug-and-play tools. Run one at a time initially to avoid conflicting hotkeys.

## Selected scripts

### Everyday shortcuts and text expansion

**[`SHORTCUTS/honey_hotkeys.ahk`](SHORTCUTS/honey_hotkeys.ahk)**

A collection of Alt-based shortcuts for symbols and formatting, including Greek characters, mathematical operators, arrows, and punctuation. Also includes date and weekday insertion, custom text expansions, and a shortcut for toggling the active window's always-on-top state.

Some representative shortcuts:

| Shortcut | Action |
| --- | --- |
| `Alt+A` | Insert α |
| `Alt+B` | Insert β |
| `Alt+M` | Insert μ |
| `Alt+O` | Insert ° |
| `Alt+-` | Insert — |
| `Ctrl+Space` | Toggle always-on-top for the active window |

The companion **[`honey_hotkeys2.ahk`](SHORTCUTS/honey_hotkeys2.ahk)** adds selection-wrapping shortcuts for brackets, braces, and parentheses.

**[`SHORTCUTS/emdash.ahk`](SHORTCUTS/emdash.ahk)** watches typed characters and turns exactly two consecutive hyphens into an em dash, including when the sequence is followed by another character.

### Batch renaming and application automation

**[`VECTOR AHK/vector_renaming.ahk`](VECTOR%20AHK/vector_renaming.ahk)** automates repeated keyboard-driven editing tasks. It includes routines to open edit fields, capture text to a file, replace entries from that file, and navigate through successive items.

The script uses prompts for iteration counts and an **Esc-to-abort** flag. It relies on a particular application's tab order and assumes the correct input field has focus, so review its actions before using it on live data.

The **[`SHORTCUTS/xence/`](SHORTCUTS/xence/)** folder contains additional application-specific keyboard macros and text templates.

### Desktop overlays and diagnostics

The **[`other tools/`](other%20tools/)** directory contains small tools for desktop visibility and interaction:

- **Performance overlay:** a compact, always-on-top display of CPU and RAM utilization, with hotkeys for visibility, click-through behavior, and position.
- **Key displays and virtual-key helpers:** inspect keyboard input and show recently pressed keys.
- **Window opacity:** adjust window transparency.
- **Tooltips and experiments:** standalone explorations of AutoHotkey input and GUI behavior.

### Character-by-character text entry

**[`other tools/wiggler/`](other%20tools/wiggler/)** contains scripts that read text from files and type it gradually, with configurable timing and control behavior. Some versions are tailored to a local Notepad++ setup and refer to absolute filesystem paths.

These are environment-dependent demonstrations of scripted input and should be checked before running.

## Repository layout

```text
ahk/
├── SHORTCUTS/
│   ├── honey_hotkeys.ahk
│   ├── honey_hotkeys2.ahk
│   ├── emdash.ahk
│   ├── todaysdate.ahk
│   ├── xence.ahk
│   ├── xence/
│   └── shortcuts.pdf
├── VECTOR AHK/
│   ├── vector_renaming.ahk
│   └── supporting text files
└── other tools/
    ├── keydisplay.ahk
    ├── keydisplay2.ahk
    ├── performance_overlay.ahk
    ├── performance_overlay_with_shortcuts.ahk
    ├── win_opacity.ahk
    ├── VK_code_tooltip.ahk
    └── wiggler/
```

## Customizing the scripts

AutoHotkey uses compact symbols for modifier keys:

| Symbol | Modifier |
| --- | --- |
| `^` | Ctrl |
| `!` | Alt |
| `+` | Shift |
| `#` | Windows key |

For example:

```autohotkey
#Requires AutoHotkey v2.0

!m::SendText "μ"                       ; Alt+M → μ
^!d::SendText FormatTime(, "yyyy-MM-dd") ; Ctrl+Alt+D → today's date
^Space::WinSetAlwaysOnTop -1, WinExist("A")
```

Before modifying a script, check for duplicate shortcuts across concurrently running files and verify the active application receives the keystrokes you expect.

## Usage and safety notes

- **Review scripts before execution.** Several macros send keyboard shortcuts to whichever window is active; they can alter documents or UI state unexpectedly.
- **Test on disposable data first.** Batch-renaming macros depend on correct focus, tab order, and timing.
- **Adjust local paths.** Some scripts refer to programs and files at fixed locations and won't run elsewhere without changes.
- **Protect private data.** Hotstring files and auxiliary text files may contain personal information, credentials, or machine-specific details. Replace sensitive values with local placeholders before sharing or running on a different setup.
- **Version compatibility matters.** Most scripts explicitly target AutoHotkey v2; verify older scripts individually before running them.

## Scope

This is a collection of scripts developed for practical daily use and experimentation, not a single maintained library or packaged application. The scripts are provided as starting points for adaptation to other Windows setups.

---

<sub>Built with AutoHotkey for Windows desktop automation.</sub>
