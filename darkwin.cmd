@echo off
color 0c
cls
title The DarkWin tamagochi for Windows

:menu
cls
color 0c
title The DarkWin tamagochi for Windows
echo ------------------------------------------------------------------------------------------------------
echo ╔╦╗┌─┐┬─┐┬┌─╦ ╦┬┌┐┌ 
echo  ║║├─┤├┬┘├┴┐║║║││││  [+] DarkWin tamagichi for Windows 
echo ═╩╝┴ ┴┴└─┴ ┴╚╩╝┴┘└┘  [+] By ZombiegeeK0 (https://www.github.com/ZombieGeeK0)
echo ------------------------------------------------------------------------------------------------------
echo [1]: Verificar si hay problemas de energia en el sistema
echo [2]: Limpiar mi equipo
echo ------------------------------------------------------------------------------------------------------
set /p choice= [+] INGRESE LA OPCION QUE HA ELEGIDO: 
if /i %choice%==1 goto verify
if /i %choice%==2 goto clean
if not /i exist %choice%: goto error

:verify
echo.
powercfg /energy
pause
goto menu

:clean
echo.
cleanmgr & sfc /scannow & dism /online /cleanup-image /restorehealth & chkdsk C: /f /r & dism.exe /online /Cleanup-Image /StartComponentCleanup
pause
goto menu
:error
goto menu
