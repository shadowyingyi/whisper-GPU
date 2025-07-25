这是一个适配于GPU版本（本人4070）的一键式使用方案
我这里装载的是ggml-large-v3
whisper-cli已经经过了适配GPU版本的编译
你只需要把你的音频文件（wav格式），放到和whisper -cli.exe的同一个文件夹下，然后双击en.bat，即可遍历文件夹下所有的音频文件，自动转录为txt文件
如果需要转录中文，可以修改en.bat中，
 "%CURRENT_DIR%whisper-cli.exe" -m "%CURRENT_DIR%%model%" -f "%%f" -l en -otxt -of "%%~nf"
为 "%CURRENT_DIR%whisper-cli.exe" -m "%CURRENT_DIR%%model%" -f "%%f" -l zh -otxt -of "%%~nf"
即可