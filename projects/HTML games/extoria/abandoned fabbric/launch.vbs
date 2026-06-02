' Launch Game - Opens the HTML game in default browser
Set objShell = CreateObject("WScript.Shell")
strPath = objShell.CurrentDirectory & "\pages\01_ingresso_fabbrica.html"
objShell.Run """" & strPath & """", 1, False
