@echo off
rem Opens the app in a fullscreen Chrome app window (F11 leaves fullscreen)
set "CHROME=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" (
  start "" "%~dp0index.html"
  exit /b
)
start "" "%CHROME%" --app="file:///%~dp0index.html" --start-fullscreen
