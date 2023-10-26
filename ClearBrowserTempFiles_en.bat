@echo off
echo Start clear browser temporary files, please closed now running programs.
echo Clearn Internet Explorer browser temporary files, please wait..
title Clear browser temporary files
COLOR b
pause

rem Clearing win7`s IE temporary files
taskkill.exe /F /IM iexplore.exe
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"

rem Clearing IE temporary files and cookies
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
rd /s /q %userprofile%\Local Settings\Temp
del /f /s /q "%userprofile%\recent\*.*"

echo Clearing Microsoft Edge`s browser temporary files, please wait..
pause
rem Clearing Microsoft Edge browser temporary files
del /f /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache\Cache_Data\*.*"
del /f /s /q "C:\Users\User Data\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\Cache\*.*"

echo Clearing Google Chrome browser temporary files, please wait..
pause
rem Clearing chrome`s browser temporary files
taskkill.exe /F /IM chrome.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"

echo Clearing Firebox browser temporary files, please wait..
pause
rem Clearing Firebox`s browser temporary files
taskkill.exe /F /IM firefox.exe
del /f /s /q "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\*.*"

echo Clearing system junk files
pause
rem Clearing system junk files
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

echo All temporary files are cleared!
echo. & pause
exit  