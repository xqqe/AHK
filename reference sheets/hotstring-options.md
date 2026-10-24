# AutoHotkey v2 — Hotstring Reference Sheet

A quick reference for hotstring triggers, option flags, capitalization, ending characters, and context-dependent expansions.

**Official documentation:** [Hotstrings](https://www.autohotkey.com/docs/v2/Hotstrings.htm) · [Hotkeys](https://www.autohotkey.com/docs/v2/Hotkeys.htm) · [Key list](https://www.autohotkey.com/docs/v2/KeyList.htm)

## Syntax

```autohotkey
:Options:Trigger::Replacement
::btw::by the way         ; Standard: requires an ending character
:*:btw::by the way       ; Expands immediately
:C:btw::By The Way       ; Case-sensitive
:*C:btw::By The Way      ; Immediate + case-sensitive
```

Options appear together between the first and second colons; their order usually does not matter. The **trigger** is what you type, and the **replacement** is the text or action produced.

## Hotstring option flags

| Option | Meaning | Notes |
| --- | --- | --- |
| `*` | No ending character required | Fires as soon as the final trigger character is typed. |
| `?` | Match inside words | Allows a trigger even when preceded by another word character. |
| `C` / `C1` | Case-sensitive trigger | `abc` and `ABC` are distinct. |
| `C0` | Case-insensitive trigger | Explicitly turns off case-sensitive matching. |
| `C1` | Case-sensitive trigger | Same as `C`. |
| Default | Case adaptation | Case-insensitive auto-replace hotstrings normally adapt replacement capitalization. |
| `B0` | Do not backspace the trigger | Useful for actions that should leave the typed abbreviation in place. |
| `B` / `B1` | Backspace trigger | Default for auto-replace hotstrings. |
| `O` | Omit ending character | The ending character that activated the hotstring is not sent. |
| `Z` | Reset recognizer | Resets the hotstring recognizer after activation. |
| `R` | Raw replacement | Treats Send-style special characters literally; `T` is often better for plain text. |
| `T` | Text mode | Sends replacement text using text mode. |
| `X` | Execute an action | Used with an action/function call rather than sending literal replacement text. |
| `SI` | SendInput | Selects the SendInput method. |
| `SE` | SendEvent | Selects the SendEvent method. |
| `SP` | SendPlay | Selects the SendPlay method. |
| `K<n>` | Key delay | Sets delay for sending replacement text, in milliseconds. |
| `P<n>` | Priority | Sets hotstring priority. |

**Important:** `C` controls matching, while `C0` is the default. The default case-insensitive mode may adapt the replacement's capitalization. Consult the official docs for additional flags and version-specific details.

## Common combinations

| Syntax | Effect |
| --- | --- |
| `::abc::replacement` | Expand after an ending character (e.g., Space or Enter). |
| `:*:abc::replacement` | Expand immediately. |
| `:?:abc::replacement` | Allow expansion inside a word, but still require an ending character. |
| `:*?:abc::replacement` | Immediate expansion, including inside words. |
| `:C:abc::replacement` | Case-sensitive; requires an ending character. |
| `:*C:abc::replacement` | Immediate and case-sensitive. |
| `:*?C:abc::replacement` | Immediate, anywhere, and case-sensitive. |
| `:O:abc::replacement` | Expand on an ending character without including that character. |
| `:*B0:abc::replacement` | Fire immediately without erasing the trigger. |
| `:*T:abc::replacement` | Immediate text-mode expansion. |

## Practical examples

### Immediate expansion

```autohotkey
:*:@@::example@gmail.com
:*:--::—
:*:alpha::α
```

### Case-sensitive abbreviations

```autohotkey
:*C:DNA::deoxyribonucleic acid
:*C:RNA::ribonucleic acid
```

### LaTeX-like symbol shortcuts (including inside words)

```autohotkey
:*?:\mu::μ
:*?:\alpha::α
:*?:\beta::β
```

### Drop the ending character

```autohotkey
:O:addr::123 Example Street
```

Typing `addr` followed by Space expands the address without adding the Space.

### Run code instead of static text

```autohotkey
:*:date::{
    SendText FormatTime(, "yyyy-MM-dd")
}
```

### Context-specific expansion

```autohotkey
#HotIf WinActive("ahk_exe notepad.exe")
:*:sig::My custom signature
#HotIf
```

Only activates when Notepad is the active application.

## Set defaults for subsequent hotstrings

```autohotkey
#Hotstring *       ; Immediate by default
#Hotstring C       ; Case-sensitive by default
#Hotstring ?       ; Match inside words by default
```

These directives affect **subsequent** hotstring definitions. Avoid turning on `*` and `?` globally unless most of your expansions need them.

## The key distinction: `*` vs `?`

- **`*` = when:** trigger immediately, without an ending character.
- **`?` = where:** trigger even if preceded by a word character.

For example, `:*:cat::dog` expands `cat` immediately when typed at the start of a word, but generally not the `cat` inside `educate`. `:*?:cat::dog` can also expand the embedded `cat`.

## Troubleshooting

- **Not triggering?** Check the ending-character requirement, case sensitivity, preceding word characters, and `#HotIf` conditions.
- **Unexpected capitalization?** Use `C` when the trigger's case must match exactly; review automatic case adaptation for replacements.
- **Trigger disappears unexpectedly?** Check `B0` versus the default backspacing behavior.
- **Whitespace behaves strangely?** Check `O` and whether the hotstring uses `*`.
- **Wrong version?** These examples target **AutoHotkey v2**. [v1 hotstring docs](https://www.autohotkey.com/docs/v1/Hotstrings.htm) are available for legacy scripts.
