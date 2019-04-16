@echo off

cd /d %~dp0
set "WORK_DIR=%CD%"
set "CONF_DIR=%WORK_DIR%/../conf"

rem read config info from wrapper-app-property.conf
for /f "eol=# delims=" %%i in ('cat "%CONF_DIR%/wrapper-app-property.conf"^| grep "="') do (
set temp=%%i
set !temp:~4!
rem echo %%i
rem echo !APP_NAME!
)

rem read config info from wrapper-java-additional.conf
for /f "eol=# delims=" %%i in ('cat "%CONF_DIR%/wrapper-java-additional.conf"^| grep "="') do (
set temp=%%i
set !temp:~2!
rem echo %%i
rem echo !http.listen.port!
)
