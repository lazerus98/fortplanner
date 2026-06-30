@echo off
REM Serve this folder over http so tests.html can load the editor in its iframe
REM (browsers wall off file:// pages from each other). Double-click to start.
cd /d "%~dp0"
echo.
echo   Serving:  %cd%
echo   Open in your browser:  http://localhost:8000/tests.html
echo   (Keep this window open. Press Ctrl+C to stop the server.)
echo.
REM Try Python first (py launcher, then python), then fall back to Node's http-server.
py -m http.server 8000 2>nul || python -m http.server 8000 2>nul || npx --yes http-server -p 8000 -c-1
echo.
echo   No server found. Install Python (python.org) or Node (nodejs.org), then run this again.
pause
