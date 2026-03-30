@echo off
title Plumbers AI Widget
echo Starting Plumbers AI Widget...
echo.

:: Find an open port and start server
cd /d "%~dp0"
start /b python -m http.server 8000 >nul 2>&1

:: Wait a moment for server to start
timeout /t 1 /nobreak >nul

:: Open in default browser
start http://localhost:8000/widget.html

echo Widget is running at http://localhost:8000/widget.html
echo.
echo Close this window to stop the widget server.
pause >nul

:: Kill the Python server when window is closed
taskkill /f /im python.exe /fi "WINDOWTITLE eq python*" >nul 2>&1
