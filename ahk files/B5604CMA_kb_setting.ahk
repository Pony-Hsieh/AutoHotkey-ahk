#Requires AutoHotkey v2.0
#SingleInstance force

/* 執行此檔案，有可能會造成 asus 筆電觸控板 toggle 快捷鍵無法正確作動
 * 主要是 CapsLock、LCtrl 互換，可能與 Asus 原本的設定有衝突，但我不知道衝突在哪，目前無法處理，所以就需要再另外搭配 toggle_touchpad.ahk
 * 可搭配 toggle_touchpad.ahk 一併使用
 * toggle_touchpad.ahk => 透過 Ctrl + F6 切換觸控板開/關
 */

/*
    CapsLock | LCtrl
 => LCtrl    | CapsLock
 */
CapsLock::LCtrl ; 將 CapsLock 映射為 LCtrl
LCtrl::CapsLock ; 將 LCtrl 映射為 CapsLock

; Ctrl + F6 => 啟用/禁用 觸控板
; 資料來源： https://meta.appinn.net/t/topic/53504/4
^F6::{
    TouchpadStatus := RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status", "Enabled")
    Run("SystemSettingsAdminFlows.exe EnableTouchPad " (TouchpadStatus := !TouchpadStatus))
}

/* 獨立數字鍵盤區調整
 * 這樣調整能最大程度符合 980 配列的使用習慣
 */

/*
    0     | . | enter
 => enter | 0 | .
 */
Numpad0::NumpadEnter
NumpadDot::Numpad0
NumpadEnter::NumpadDot

/*
    + | - | * | /
 => / | * | + | -
 */
NumpadAdd::NumpadDiv
NumpadSub::NumpadMult
NumpadMult::NumpadAdd
NumpadDiv::NumpadSub