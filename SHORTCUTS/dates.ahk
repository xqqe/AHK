#Requires AutoHotkey v2.0
#SingleInstance Force

!z::Send(FormatTime(, "MM/dd/yy"))

; --------------------------------------------------------
; --------------------------------- DAYS OF THE WEEK -----
; --------------------------------------------------------

; ----------------------------
; --------- Helpers ----------
; ----------------------------

GetLastWeekday(targetDay) {
    todayW := Integer(FormatTime(, "WDay")) ; Sun=1..Sat=7
    dayNum := Map("sun",1, "mon",2, "tue",3, "wed",4, "thu",5, "fri",6, "sat",7)[targetDay]
    diff := todayW - dayNum
    if (diff <= 0)
        diff += 7                 ; ensure "last" weekday, even if today is the same
    dt := DateAdd(A_Now, -diff, "Days")
    return FormatTime(dt, "dddd (MM/dd)")
}

GetNextWeekday(targetDay) {
    todayW := Integer(FormatTime(, "WDay")) ; Sun=1..Sat=7
    dayNum := Map("sun",1,"mon",2,"tue",3,"wed",4,"thu",5,"fri",6,"sat",7)[targetDay]
    diff := Mod(dayNum - todayW + 7, 7)     ; 0..6 (0 means today)
    dt := DateAdd(A_Now, diff, "Days")
    return FormatTime(dt, "dddd (MM/dd)")
}

GetLastWeekdate(targetDay) {
    todayW := Integer(FormatTime(, "WDay")) ; Sun=1..Sat=7
    dayNum := Map("sun",1, "mon",2, "tue",3, "wed",4, "thu",5, "fri",6, "sat",7)[targetDay]
    diff := todayW - dayNum
    if (diff <= 0)
        diff += 7                 ; ensure "last" weekday, even if today is the same
    dt := DateAdd(A_Now, -diff, "Days")
    return FormatTime(dt, "MM/dd/yy")
}

GetNextWeekdate(targetDay) {
    todayW := Integer(FormatTime(, "WDay")) ; Sun=1..Sat=7
    dayNum := Map("sun",1,"mon",2,"tue",3,"wed",4,"thu",5,"fri",6,"sat",7)[targetDay]
    diff := Mod(dayNum - todayW + 7, 7)     ; 0..6 (0 means today)
    dt := DateAdd(A_Now, diff, "Days")
    return FormatTime(dt, "MM/dd/yy")
}
; ----------------------------
; ----- Today Hotstrings -----
; ----------------------------

:*:to'day::{
	Send(FormatTime(, "dddd (MM/dd)"))
	}

:*:to/day::{
	Send(FormatTime(, "MM/dd/yy"))
	}

; ----------------------------
; --- Last Week Hotstrings ---
; ----------------------------


; last Monday (test this one first)
:*:m'on::{ 
    SendText(GetLastWeekday("mon")) 
}
:*:m/on::{ 
    SendText(GetLastWeekdate("mon")) 
}
:*:t'ue::{ 
    SendText(GetLastWeekday("tue")) 
}
:*:t/ue::{ 
    SendText(GetLastWeekdate("tue")) 
}
:*:w'ed::{ 
    SendText(GetLastWeekday("wed")) 
}
:*:w/ed::{ 
    SendText(GetLastWeekdate("wed")) 
}
:*:t'hu::{ 
    SendText(GetLastWeekday("thu")) 
}
:*:t/hu::{ 
    SendText(GetLastWeekdate("thu")) 
}
:*:f'ri::{ 
    SendText(GetLastWeekday("fri")) 
}
:*:f/ri::{ 
    SendText(GetLastWeekdate("fri")) 
}
:*:s'at::{ 
    SendText(GetLastWeekday("sat")) 
}
:*:s/at::{ 
    SendText(GetLastWeekdate("sat")) 
}
:*:s'un::{ 
    SendText(GetLastWeekday("sun")) 
}
:*:s/un::{ 
    SendText(GetLastWeekdate("sun")) 
}

; ----------------------------
; --- Next Week Hotstrings ---
; ----------------------------


; next Monday 
:*:nm'on::{ 
    SendText(GetNextWeekday("mon")) 
}
:*:nm/on::{ 
    SendText(GetNextWeekdate("mon")) 
}

:*:nt'ue::{ 
    SendText(GetNextWeekday("tue")) 
}
:*:nt/ue::{ 
    SendText(GetNextWeekdate("tue")) 
}

:*:nw'ed::{ 
    SendText(GetNextWeekday("wed")) 
}
:*:nw/ed::{ 
    SendText(GetNextWeekdate("wed")) 
}

:*:nt'hu::{ 
    SendText(GetNextWeekday("thu")) 
}
:*:nt/hu::{ 
    SendText(GetNextWeekdate("thu")) 
}

:*:nf'ri::{ 
    SendText(GetNextWeekday("fri")) 
}
:*:nf/ri::{ 
    SendText(GetNextWeekdate("fri")) 
}

:*:ns'at::{ 
    SendText(GetNextWeekday("sat")) 
}
:*:ns/at::{ 
    SendText(GetNextWeekdate("sat")) 
}

:*:ns'un::{ 
    SendText(GetNextWeekday("sun")) 
}
:*:ns/un::{ 
    SendText(GetNextWeekdate("sun")) 
}
