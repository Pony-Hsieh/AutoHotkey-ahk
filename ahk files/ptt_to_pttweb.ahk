#Requires AutoHotkey v2.0
#SingleInstance force

; Ctrl + Alt + W
^!w:: {
  sleepTime := 50
  
  old_Clipboard := A_Clipboard ; 將前一個複製到剪貼簿的內容存起來
  
  SendInput "^l" ; Ctrl + L 定位到網址列
  Sleep sleepTime
  
  SendInput "^c" ; 複製網址
  Sleep sleepTime

  oldUrl := A_Clipboard ; 從剪貼簿取出網址文字
  NewStr := RegExReplace(oldUrl, "ptt", "pttweb") ; 將 ptt 取代為 pttweb
  Sleep sleepTime

  A_Clipboard := NewStr ; 將取代後的網址貼到剪貼簿
  Sleep sleepTime

  SendInput "^v"
  Sleep sleepTime
  
  SendInput "{Enter}" ; 按下 enter

  A_Clipboard := old_Clipboard
  
  return
}