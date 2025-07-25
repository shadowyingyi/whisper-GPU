@echo off
setlocal enabledelayedexpansion

:: 设置模型文件名称
set model=ggml-large-v3.bin

:: 获取当前目录
set CURRENT_DIR=%~dp0

:: 遍历所有 wav 文件
for %%f in (*.wav) do (
    echo 正在转录：%%f
    "%CURRENT_DIR%whisper-cli.exe" -m "%CURRENT_DIR%%model%" -f "%%f" -l en -otxt -of "%%~nf"
    
    :: 同时在控制台输出生成的txt内容
    type "%%~nf.txt"

    echo 已完成：%%~nf.txt
    echo.
)

echo 所有转录完成！
pause
