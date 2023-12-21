/** Requires AutoHotkey v2.0 */


/** 順時針交換 CapsLock、 LCtrl、LWin
 */
; 將 CapsLock 映射為 LCtrl
CapsLock::LCtrl
; 將 LCtrl 映射為 LWin
LCtrl::LWin
; 將 LWin 映射為 CapsLock
LWin::CapsLock


/** LAlt + 左 => Home 系列
 */
; LAlt + 左 => Home
<!Left:: {
  SendInput "{Home}"
}
; LAlt + Shift + 左 => Shift + Home
<!+Left:: {
  SendInput "+{Home}"
}

/** LAlt + 右 => End 系列
 */
; LAlt + 右 => End
<!Right:: {
  SendInput "{End}"
}
<!+Right:: {
  ; LAlt + Shift + 右 => Shift + End
  SendInput "+{End}"
}


/** LAlt + ijkl => 方向鍵 系列
 * 先判斷 ctrl, shift 的搭配即可，win 應該用不太到
 */

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


/** 音量控制系列
 */
; LAlt + NumPad+ => 提高音量
<!NumpadAdd:: {
  SendInput "{Volume_Up}"
}
; LAlt + NumPad- => 降低音量
<!NumpadSub:: {
  SendInput "{Volume_Down}"
}
; LAlt + NumPadEnter => 靜音
<!NumpadEnter:: {
  SendInput "{Volume_Mute}"
}


/** 避免誤觸 NumLock
 */
; NumLock => 空鍵位
NumLock:: {
}
; LAlt + NumLock => toggle NumLock state
<!NumLock:: {
  SetNumLockState !GetKeyState("NumLock", "T")
}