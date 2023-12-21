/**
 * 還是 qmk 比較厲害，這部分如果有 qmk 還是用 qmk，但某些事情還是 ahk 會更為合適
 */

; 先判斷 ctrl, shift 的搭配即可，win 應該用不太到

/** ------ 上 ------ */
; LAlt + i => 上
<!i:: {
  SendInput "{Up}"
}
; LAlt + Shift + i => Shift + 上
<!+i:: {
  SendInput "+{Up}"
}
; LAlt + Ctrl + i => Ctrl + 上
<!^i:: {
  SendInput "^{Up}"
}
; LAlt + Shift + Ctrl + i => Shift + Ctrl + 上
<!+^i:: {
  SendInput "+^{Up}"
}


/** ------ 左 ------ */
; LAlt + j => 左
<!j:: {
  SendInput "{Left}"
}
; LAlt + Shift + j => Shift + 左
<!+j:: {
  SendInput "+{Left}"
}
; LAlt + Ctrl + j => Ctrl + 左
<!^j:: {
  SendInput "^{Left}"
}
; LAlt + Shift + Ctrl + j => Shift + Ctrl + 左
<!+^j:: {
  SendInput "+^{Left}"
}


/** ------ 下 ------ */
; LAlt + k => 下
<!k:: {
  SendInput "{Down}"
}
; LAlt + Shift + k => Shift + 下
<!+k:: {
  SendInput "+{Down}"
}
; LAlt + Ctrl + k => Ctrl + 下
<!^k:: {
  SendInput "^{Down}"
}
; LAlt + Shift + Ctrl + k => Shift + Ctrl + 下
<!+^k:: {
  SendInput "+^{Down}"
}


/** ------ 右 ------ */
; LAlt + l => 右
<!l:: {
  SendInput "{Right}"
}
; LAlt + Shift + l => Shift + 右
<!+l:: {
  SendInput "+{Right}"
}
; LAlt + Ctrl + l => Ctrl + 右
<!^l:: {
  SendInput "^{Right}"
}
; LAlt + Shift + Ctrl + l => Shift + Ctrl + 右
<!+^l:: {
  SendInput "+^{Right}"
}