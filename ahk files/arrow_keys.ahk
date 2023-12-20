/*
還是 qmk 比較厲害，這部分如果有 qmk 還是用 qmk，但某些事情還是 ahk 會更為合適
*/

; 先判斷 ctrl, shift 的搭配即可，win 應該用不太到


; LAlt + t => 左
<!t:: {
  SendInput "{Left}"
}
; LAlt + Shift + t => Shift + 左
<!+t:: {
  SendInput "+{Left}"
}
; LAlt + Ctrl + t => Ctrl + 左
<!^t:: {
  SendInput "^{Left}"
}
; LAlt + Shift + Ctrl + t => Shift + Ctrl + 左
<!+^t:: {
  SendInput "+^{Left}"
}