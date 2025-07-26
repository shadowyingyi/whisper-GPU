# 🚀 whisper-GPU

> 基于 [whisper.cpp](https://github.com/ggerganov/whisper.cpp) 的 GPU40 系（本机 4070 测试）显卡高性能转录一键方案。

---

## ✨ 项目特点

- 针对 GPU 40 系（如 RTX 4070）与 CUDA 环境专门适配，超快转录体验
- 内置 **whisper-cli** 已为 GPU 编译优化
- 支持批量自动遍历转录，真正一键用法
- 支持中英文音频转录（可自定义语言参数）
- 推荐大模型 **ggml-large-v3.bin**，效果最佳

---

## 📦 使用说明

1. **下载大模型**
    - 进入 [HuggingFace 模型库](https://huggingface.co/ggerganov/whisper.cpp)
    - 下载 `ggml-large-v3.bin`，并放到和 `whisper-cli.exe` 相同目录下

2. **准备音频文件**
    - 将你要转录的 **`.wav` 格式音频**，放入 `whisper-cli.exe` 所在目录，建议使用ffmpeg把音频切成15分钟为单位的小段

3. **一键转录**
    - 双击 `en.bat`  
    - 程序会自动遍历目录下所有音频文件，并转录生成同名 `.txt` 文件

---

## 🛠️ 修改语言为中文

如需转录中文，请将 `en.bat` 里的：

```bat
"%CURRENT_DIR%whisper-cli.exe" -m "%CURRENT_DIR%%model%" -f "%%f" -l en -otxt -of "%%~nf"

修改为
"%CURRENT_DIR%whisper-cli.exe" -m "%CURRENT_DIR%%model%" -f "%%f" -l zh -otxt -of "%%~nf"
