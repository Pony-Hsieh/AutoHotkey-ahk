#Requires AutoHotkey v2.0
#SingleInstance force

/* 狀況排除
 * 避免因為在中文輸入法模式下，無法成功貼上 url
 * 如果選擇直接送出字串，那在中文輸入法模式下，他就會像是按下英文對應的中文按鍵，自然也就無法前往到指定的 url 了
 * 使用剪貼簿即可避免此狀況
 * 
 * 參考資料： https://jdev.tw/blog/713/autohotkey-output-chinese 
 */


; Alt + C => 透過 chrome 有痕模式開啟 Google calendar
!C:: {
  ; day, week, month, year, agenda(時間表 => 條列式顯示時間), customday(4 天)
  calendarUrl := "https://calendar.google.com/calendar/u/0/r/day"

  pasteUrlAndGoThroughChrome(calendarUrl)
  
  SendInput "{F11}" ; 按下 F11 進入全螢幕模式避免分心
}

pasteUrlAndGoThroughChrome(url)
{
  ; 判定 url 是否為空值
  if (url = "") {
    return
  }

  ; 依據 mode 判定要開啟有痕還是無痕模式
  ; chromePath := "C:\Program Files\Google\Chrome\Application\chrome.exe"
  ; if (mode == "incognito") {
  ;   chromePath := chromePath " --incognito"
  ; }

  chromePath := "C:\Program Files\Google\Chrome\Application\chrome.exe"

  oldClipboard := A_Clipboard ; 將前一個複製到剪貼簿的內容存起來
  A_Clipboard := url ; 將 url 貼到剪貼簿
  
  Run chromePath ; 開啟 chrome 有痕模式
  Sleep 200 ; 等待系統開啟 chrome ; 目前實測的極限值約在 150，小於這個數值系統來不及開啟 chrome

  SendInput "^v" ; 送出 Ctrl + V 貼上剪貼簿內容
  SendInput "{Enter}" ; 按下 enter
  
  Sleep 200 ; 等待前一項任務執行完成；如果沒有 sleep，滿有可能會無法還原剪貼簿內容
  A_Clipboard := oldClipboard ; 還原剪貼簿內容

  return
}