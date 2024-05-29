#Requires AutoHotkey v2.0
#SingleInstance force

; 資料來源： https://meta.appinn.net/t/topic/53504/4

; Ctrl + F6 => 啟用/禁用 觸控板
^F6::{
    TouchpadStatus := RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status", "Enabled")
    Run("SystemSettingsAdminFlows.exe EnableTouchPad " (TouchpadStatus := !TouchpadStatus))
}