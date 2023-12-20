## 變數
- 
  ```ahk
  MyNumber := 123
  MyString := "这是原义字符串."
  CopyOfVar := Var
  ```
- 變數不能被顯式刪除，但是它的前一個值可以透過賦值一個新的值來釋放，比如一個空字串:
  ```ahk
  MyNumber := ""
  ```
- 串接變數範例  
  也可以不要半型句點，直接以半型空格分隔
  ```ahk
  MsgBox "變數的值是 " . Var . "，對嗎？"
  MsgBox "變數的值是 " Var "，對嗎？"
  ```

# 參考文章
- [ClipWait | v2 | 簡體中文](https://wyagd001.github.io/v2/docs/lib/ClipWait.htm)
- [變數 | v2 | 簡體中文](https://wyagd001.github.io/v2/docs/Variables.htm)
- [Format | v2 | 簡體中文](https://wyagd001.github.io/v2/docs/lib/Format.htm)
- [Sleep | v2 | 簡體中文](https://wyagd001.github.io/v2/docs/lib/Sleep.htm)
  - 由於操作系統中計時系統的精確度，Delay 通常會被向上取整到最近的 10 或 15.6 毫秒的倍數(取決於所安裝的硬體和驅動的類型)
- [A_Clipboard | v2 | 簡體中文](https://wyagd001.github.io/v2/docs/lib/A_Clipboard.htm)