

Run("C:/Program Files/Google/Chrome/Application/chrome.exe https://www.youtube.com/channel/UCAPTk-pgX5cfharAoWnkRUQ")
WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "", 1)
Sleep(5000)
Send("^s")
Sleep(1000)
Send("UCAPTk-pgX5cfharAoWnkRUQ{Enter}")


