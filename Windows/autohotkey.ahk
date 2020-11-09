#AutoReload [on]

; Maps caps lock to escape
Capslock::Esc

; Map Win Shift Left/Right to JK instead
; This allows you to move a window from one screen to the other
; <# corresponds to Left Windows, ># for right, # just for win
; + corresponds to shift
; Win + Shift + J :: Win + Shift + Left
#+j::#+Left
#+k::#+Right


; Map Ctrl Shift Left/Right to JK instead
; This lets you change desktops
; ^ correspons to ctrl
; <# corresponds to Left Windows, ># for right, # just for win
; Ctrl + Win + Left/Right :: Ctrl + Win + H/L
<^<#j::^#Left
<^<#k::^#Right


!h:: ; The ! stands for the left alt key
SendInput {Left}
return

!j:: ; The ! stands for the left alt key
SendInput {Down}
return

!k:: ; The ! stands for the left alt key
SendInput {Up}
return

!l:: ; The ! stands for the left alt key
SendInput {Right}
return

<#`:: ; Left Win + ~ key
    Run "C:\Program Files\Git\git-bash.exe" --cd=C:\Workspace
    return


;IfWinExist ahk_class gitbash
;	winactivate ahk_class gitbash
;else
;	run, "C:\Program Files\Git\git-bash.exe"
;WinWaitActive ahk_class gitbash
