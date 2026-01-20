@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Cleaning Next.js cache...
if exist .next rmdir /s /q .next
if exist node_modules\.cache rmdir /s /q node_modules\.cache
echo Reinstalling dependencies...
call npm install
echo Done! Please restart the dev server.
pause
