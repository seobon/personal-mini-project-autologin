#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; 로그인 폼 요소 찾기
WinActivate, ahk_exe msedge.exe

Sleep, 2000
Send, seobon1201
Sleep, 500
Send, {Tab 2}
Sleep, 500
Send, tjqhs1201
Sleep, 500
Send, {Enter}
