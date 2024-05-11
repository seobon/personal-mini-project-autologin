#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; 로그인 폼 요소 찾기
WinActivate, ahk_exe msedge.exe
Sleep, 4000
Send, {Tab 15}
Send, {Enter}
