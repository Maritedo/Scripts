@echo off & chcp 65001>nul
set /p choice=该脚本将覆盖默认配置(位于用户文件夹下的pip文件夹中)，输入Y继续：

if /I not "%choice%" equ "Y" goto end

set mypath=pip.ini
cd /d "%USERPROFILE%"
if not exist "pip" (
    md pip>nul
)
cd pip
echo [global] > "%mypath%"
echo index-url = https://pypi.tuna.tsinghua.edu.cn/simple >> "%mypath%"
echo [install] >> "%mypath%"
echo trusted-host = pypi.tuna.tsinghua.edu.cn >> "%mypath%"
echo 替换完成，按任意键退出...
pause>nul

:end