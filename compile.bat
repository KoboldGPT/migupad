@echo off

where node >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js is not installed.
    exit /b 1
)
where npm >nul 2>&1
if %errorlevel% neq 0 (
    echo npm is not installed.
    exit /b 1
)

xcopy /y migupad.html project >NUL

cd project
call npm install
call npm start build
copy /y .\dist\migupad.html ..\migupad_compiled.html
cd ..
