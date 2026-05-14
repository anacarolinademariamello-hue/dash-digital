@echo off
echo ============================================
echo   DASH - Plataforma de Transcricao de Videos
echo ============================================
echo.

echo [1/3] Verificando Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo ERRO: Python nao encontrado. Instale em python.org
    pause
    exit /b 1
)

echo [2/3] Instalando dependencias...
pip install flask werkzeug openai-whisper ffmpeg-python

echo.
echo [3/3] Iniciando servidor...
echo.
echo  Acesse: http://localhost:5000
echo  Para encerrar: pressione CTRL+C
echo.
python app.py
pause
