@echo off
setlocal enabledelayedexpansion

:: ����ģ���ļ�����
set model=ggml-large-v3.bin

:: ��ȡ��ǰĿ¼
set CURRENT_DIR=%~dp0

:: �������� wav �ļ�
for %%f in (*.wav) do (
    echo ����ת¼��%%f
    "%CURRENT_DIR%whisper-cli.exe" -m "%CURRENT_DIR%%model%" -f "%%f" -l en -otxt -of "%%~nf"
    
    :: ͬʱ�ڿ���̨������ɵ�txt����
    type "%%~nf.txt"

    echo ����ɣ�%%~nf.txt
    echo.
)

echo ����ת¼��ɣ�
pause
