@echo off
echo  �}�l�M���s�����Ȧs�ɤΨt�ΩU���ɮסA�ϥΫe�������Ҧ��B�椤�{���C
echo �M��IE�Ȧs��.....�еy��
title �M���Ȧs��
COLOR b
pause

rem �M��win7��IE�Ȧs��
taskkill.exe /F /IM iexplore.exe
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"

rem �M��IE�Ȧs�ɤ�cookies
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
rd /s /q %userprofile%\Local Settings\Temp
del /f /s /q "%userprofile%\recent\*.*"

echo �M��Microsoft Edge�Ȧs��.....�еy��
pause
rem �M��Microsoft Edge���Ȧs��
del /f /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache\Cache_Data\*.*"
del /f /s /q "C:\Users\User Data\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\Cache\*.*"

echo �M��Google Chrome�Ȧs��.....�еy��
pause
rem �M��chrome���Ȧs��
taskkill.exe /F /IM chrome.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"

echo �M��Firebox�Ȧs��.....�еy��
pause
rem �M��Firebox���Ȧs��
taskkill.exe /F /IM firefox.exe
del /f /s /q "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\*.*"

echo �M���t�ΩU���ɮ�
pause
rem �M���t�ΩU���ɮ�
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
DEL /S /F /Q "%AllUsersProfile%\�u�}�l�v�\���\�{����\Windows Messenger.lnk"
rd /s /q %windir%\temp & md %windir%\temp
RD /S /Q "%userprofile%\Local Settings\Temp"
MD "%userprofile%\Local Settings\Temp"
RD /S /Q "%systemdrive%\Program Files\Temp"
MD "%systemdrive%\Program Files\Temp"
RD /S /Q "%systemdrive%\d"
net user aspnet /delete

cleanmgr /sagerun:99

echo �ɮ׬Ҥw�M�������I
echo. & pause
exit  