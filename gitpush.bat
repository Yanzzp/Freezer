@echo off

REM 检查是否提供了命令行参数
if "%~1"=="" (
    echo No commit message provided, using default message 'update'.
    set "COMMIT_MESSAGE=update"
) else (
    set "COMMIT_MESSAGE=%~1"
)

REM 执行 Git 命令
git add .
git commit -m "%COMMIT_MESSAGE%"
git push
