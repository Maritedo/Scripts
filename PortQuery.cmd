@echo off
setlocal enabledelayedexpansion
set /p port=����˿ں�:
cls
set /a count=1
echo ʹ�ö˿�%port%�Ľ�����:
(for /f "tokens=5" %%a in ('netstat -ano^|findstr %port%') do (
    if not defined %%a (
        if not %%a==0 (
            (for /f "tokens=1" %%b in ('tasklist /fi "pid eq %%a" /nh') do (
                echo !count! ^| %%b
                set /a count+=1
            ))
            set %%a=1
        )
    )
))
pause>nul
