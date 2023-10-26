@echo off
echo  開始清除瀏覽器暫存檔及系統垃圾檔案，使用前請關閉所有運行中程式。
echo 清除IE暫存檔.....請稍候
title 清除暫存檔
COLOR b
pause

rem 清除win7的IE暫存檔
taskkill.exe /F /IM iexplore.exe
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"

rem 清除IE暫存檔及cookies
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
rd /s /q %userprofile%\Local Settings\Temp
del /f /s /q "%userprofile%\recent\*.*"

echo 清除Microsoft Edge暫存檔.....請稍候
pause
rem 清除Microsoft Edge的暫存檔
del /f /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache\Cache_Data\*.*"
del /f /s /q "C:\Users\User Data\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\Cache\*.*"

echo 清除Google Chrome暫存檔.....請稍候
pause
rem 清除chrome的暫存檔
taskkill.exe /F /IM chrome.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"

echo 清除Firebox暫存檔.....請稍候
pause
rem 清除Firebox的暫存檔
taskkill.exe /F /IM firefox.exe
del /f /s /q "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\*.*"

echo 清除系統垃圾檔案
pause
rem 清除系統垃圾檔案
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.err 
del /f /s /q %systemdrive%\*.wbk
del /f /s /q %systemdrive%\*.xlk
del /f /s /q %systemdrive%\*.diz
del /f /s /q %systemdrive%\*.dmp 
del /f /s /q %systemdrive%\*.ftg
del /f /s /q %systemdrive%\*.fts 
del /f /s /q %windir%\*.bak
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
DEL /S /F /Q "%systemroot%\Temp\*.*"
DEL /S /F /Q "%AllUsersProfile%\「開始」功能表\程式集\Windows Messenger.lnk"
rd /s /q %windir%\temp & md %windir%\temp
RD /S /Q "%userprofile%\Local Settings\Temp"
MD "%userprofile%\Local Settings\Temp"
RD /S /Q "%systemdrive%\Program Files\Temp"
MD "%systemdrive%\Program Files\Temp"
RD /S /Q "%systemdrive%\d"
net user aspnet /delete

cleanmgr /sagerun:99

echo 檔案皆已清除完畢！
echo. & pause
exit  