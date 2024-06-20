@echo off
chcp 65001 >nul
color 3
cls

:menu
cls
title Simple Batch Tool
echo ╔╦╗┬ ┬┬ ┌┬┐┬  ╔╦╗┌─┐┌─┐┬  
echo ║║║│ ││  │ │   ║ │ ││ ││  
echo ╩ ╩└─┘┴─┘┴ ┴   ╩ └─┘└─┘┴─┘v1.0.0 
echo.
echo Made by Tolerate
echo.
set /p user=Username: 
echo.
set /p pass=Password: 
echo.

if "%user%"=="root" if "%pass%"=="root" goto success

echo [!] Invalid Login. Please try again... [!]
pause
goto menu

:success
title Multi Tool - Currently Logged in as [%user%]
cls
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Google                             ║
echo ║        2 - Credits                            ║
echo ║                                               ║
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto one
if "%a%"=="2" goto two

echo [!] Invalid Choice. Please try again... [!]
pause
goto success

:one
start https://www.google.com/
goto success

:two
cls
echo Made by Tolerate
timeout 2 >nul
pause
goto success
