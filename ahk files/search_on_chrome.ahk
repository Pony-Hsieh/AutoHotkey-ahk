; ctrl + alt + 2 => 透過 chrome 有痕模式搜尋選取起來的內容
^!2:: {
  searchOnChrome("")
}

; ctrl + alt + 1 => 透過 chrome 無痕模式搜尋選取起來的內容
^!1:: {
  searchOnChrome("incognito")
}

searchOnChrome(mode)
{
  ; 依據 mode 判定要開啟有痕還是無痕模式
  chromePath := "C:\Program Files\Google\Chrome\Application\chrome.exe"
  if (mode == "incognito") {
    chromePath := chromePath " --incognito"
  }

  old_Clipboard := A_Clipboard ; 將前一個複製到剪貼簿的內容存起來
  A_Clipboard := "" ; 清空目前的剪貼簿

  SendInput "^c" ; 複製選取內容

  ; 等待剪貼簿中出現內容，等待時間為 0.05 秒 == 50ms
  ; 系統執行的極限好像差不多是 10ms 還是 15.6ms
  if (ClipWait(0.05)) {
    Run chromePath ; 開啟 chrome 有痕模式
    Sleep 200 ; 等待系統開啟 chrome ; 目前實測的極限值約在 150，小於這個數值系統來不及開啟 chrome
    SendInput "^v" ; 貼上
    SendInput "{Enter}" ; 按下 enter

    Sleep 200 ; 等待前一項任務執行完成；如果沒有 sleep，這個 function 的執行結果會不如預期
    A_Clipboard := old_Clipboard ; 還原之前的內容
    old_Clipboard := "" ; 清空之前暫存用的變數
  } else {
    ; MsgBox "沒有選取任何內容"
  }
}