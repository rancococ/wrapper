@echo off
rem ======================================================================================
rem set window properties
rem window size : 40*150=0x00280096
rem buffer size : 9999*150=0x270f0096
set CONSOLE_CURR="HKCU\Console\%%SystemRoot%%_system32_cmd.exe"
reg add %CONSOLE_CURR% /t REG_DWORD /v "WindowSize"       /d 0x00280096 /f 2>nul>nul
reg add %CONSOLE_CURR% /t REG_DWORD /v "ScreenBufferSize" /d 0x270f0096 /f 2>nul>nul
reg add %CONSOLE_CURR% /t REG_DWORD /v "ScreenColors"     /d 0x0a /f 2>nul>nul
reg add %CONSOLE_CURR% /t REG_DWORD /v "FontSize"         /d 0x00100008 /f 2>nul>nul
reg add %CONSOLE_CURR% /t REG_SZ    /v "FaceName"         /d "Lucida Console" /f 2>nul>nul
rem ======================================================================================

cd /d %~dp0
set "WORK_DIR=%CD%"

rem restart console
if not defined x (set x=0&start cmd /c %0&exit)

call "%WORK_DIR%/wrapper.bat" console
