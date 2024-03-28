@echo off 
title E7-RatV1
color 3 
cls 
chcp 65001 
echo.
echo     ███████╗███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
echo     ██╔════╝╚════██║    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
echo     █████╗      ██╔╝       ██║   █████╗  ███████║██╔████╔██║
echo     ██╔══╝     ██╔╝        ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
echo     ███████╗   ██║         ██║   ███████╗██║  ██║██║ ╚═╝ ██║
echo     ╚══════╝   ╚═╝         ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
echo. 
echo.                                                        
set /p choice= Are you sure you want to compile your Client (Yes / No) 
if "%choice%"=="Yes" goto compile
if "%choice%"=="No" goto bye
:compile
pyinstaller client.py --onefile
del client.spec
cd dist 
explorer .\
cls
echo compiled 
:bye 
exit 