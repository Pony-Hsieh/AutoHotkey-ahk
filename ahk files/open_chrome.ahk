chromePath := "C:\Program Files\Google\Chrome\Application\chrome.exe"

; win + c => 開啟 chrome 新分頁，以有痕模式
#c:: Run chromePath

; win + shift + c => 開啟 chrome 新分頁，以無痕模式
#+c:: Run chromePath " --incognito"