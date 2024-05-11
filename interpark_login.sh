#!/bin/bash
#: Title         : login bash script
#: Date          : 2024-05-09
#: Author        : "seobon Kim"(seobon1201@naver.com)
#: Desciption    : Interpark website login script
read -a user_input
ID=${user_input[0]}

read -a user_input
PWD=${user_input[0]}

echo "ID: $ID"
echo "PWD: $PWD"

# 인터파크 회원정보 페이지 URL
INTERPARK_URL="https://incorp.interpark.com/member/memberjoin.do?_method=upMemberFront"

# 마이크로소프트 엣지 실행
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "$INTERPARK_URL"


# AutoHotkey 스크립트 작성-v1
# cat << EOF > Interpark_login.ahk
# #NoEnv
# #SingleInstance Force
# SetWorkingDir %A_ScriptDir%

# ; 로그인 폼 요소 찾기
# WinActivate, ahk_exe msedge.exe
# Sleep, 2000
# Send, {Tab}
# Sleep, 500
# Send, $ID
# Sleep, 500
# Send, {Tab}
# Sleep, 500
# Send, $PWD
# Sleep, 500
# Send, {Enter}
# EOF

# AutoHotkey 스크립트 작성-v2
cat << EOF > Interpark_login.ahk
#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; 로그인 폼 요소 찾기
WinActivate, ahk_exe msedge.exe

Sleep, 2000
Send, $ID
Sleep, 500
Send, {Tab 2}
Sleep, 500
Send, $PWD
Sleep, 500
Send, {Enter}
EOF


# AutoHotkey 스크립트 실행
"C:\Program Files\AutoHotkey\AutoHotkey.exe" Interpark_login.ahk


# AutoHotkey 스크립트 작성
# cat << EOF > FInd_name.ahk
# #NoEnv
# #SingleInstance Force
# SetWorkingDir %A_ScriptDir%

# ; 로그인 폼 요소 찾기
# WinActivate, ahk_exe msedge.exe
# Sleep, 4000
# Send, {Tab 15}
# Send, {Enter}
# EOF

# AutoHotkey 스크립트 실행
# "C:\Program Files\AutoHotkey\AutoHotkey.exe" FInd_name.ahk

curl -s https://incorp.interpark.com/member/memberjoin.do?_method=upMemberFront

# 사용자 정보 가져오기
# USER_INFO=$(curl -s https://incorp.interpark.com/member/memberjoin.do?_method=upMemberFront)
# echo $USER_INFO

# 사용자 정보 추출
# NAME=$(echo $USER_INFO | grep -oE '<b>([^<]+)</b>' | sed 's/<[^>]*>//g')

# echo "NAME: $NAME"