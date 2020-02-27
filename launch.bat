@echo off

taskkill /F /IM wallpaper32.exe

xcopy "%CD%template.bmp" "%USERPROFILE%" /Y
ECHO F|%SystemRoot%\System32\xcopy.exe "%CD%template.bmp" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper" /Y
ECHO F|%SystemRoot%\System32\xcopy.exe "%CD%template.bmp" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper" /Y


%SystemRoot%\System32\reg.exe ADD "HKEY_CURRENT_USER\Control Panel\Desktop" -v Wallpaper -t REG_SZ -d "%USERPROFILE%\template.bmp" -f

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
pause