@echo off
color 0c
cls
title The DarkWin tamagochi for Windows

:check
color 0c
title The DarkWin tamagochi for Windows
net session >nul 2>&1
if %errorLevel% == 0 (
    goto menu
) else (
    cls
    color 0c
    title The DarkWin tamagochi for Windows
    echo [+] EL SCRIPT DEBE SER EJECUTADO CON PERMISOS DE ADMINISTRADOR
    pause
    exit
)

:menu
cls
color 0c
title The DarkWin tamagochi for Windows
echo The DarkWin tamagochi for Windows
echo ------------------------------------------------------------------------------------------------------
echo [+] Optimization and detection tool only for Windows OS
echo [+] DarkWin tamagochi for Windows 
echo [+] By ZombiegeeK0 (https://www.github.com/ZombieGeeK0/DarkWin)
echo ------------------------------------------------------------------------------------------------------
echo [0]: Salir del programa
echo [1]: Verificar si hay problemas de energia en el sistema
echo [2]: Limpiar mi equipo
echo [3]: Ajustar los parametros de ejecucion de VBScript
echo [4]: Desocultar los archivos de cierta unidad
echo [5]: Actualizar todos los programas que necesiten actualizacion
echo [6]: Actualizar todos los drivers que necesiten actualizacion
echo ------------------------------------------------------------------------------------------------------
set /p choice= [+] INGRESE LA OPCION QUE HA ELEGIDO: 
if /i %choice%==0 goto exit
if /i %choice%==1 goto verify
if /i %choice%==2 goto clean
if /i %choice%==3 goto vbs
if /i %choice%==4 goto des
if /i %choice%==5 goto update
if /i %choice%==6 goto drivers
if /i %choice%==3 goto if not /i exist %choice%: goto error

:verify
color 0c
title The DarkWin tamagochi for Windows
powercfg /energy
pause
goto menu

:clean
color 0c
title The DarkWin tamagochi for Windows
cleanmgr & sfc /scannow & dism /online /cleanup-image /restorehealth & chkdsk C: /f /r & dism.exe /online /Cleanup-Image /StartComponentCleanup & defrag C: /r & netsh int ip reset
pause
goto menu

:vbs
color 0c
title The DarkWin tamagochi for Windows
cd %homedrive%/windows/system32 & start wscript.exe
pause
goto menu

:des
color 0c
cls
title The DarkWin tamagochi for Windows
echo Desocultardor de archivos de DarkWin
echo ------------------------------------------------------------------------------------------------------
set /p choice= [+] INGRESE LA LETRA DE LA UNIDAD A DESOCULTAR: 
echo ------------------------------------------------------------------------------------------------------
cd %choice%:\ & attrib -r -a -h -s %choice%:\*.* /S /D
pause
goto menu

:update
color 0c
title The DarkWin tamagochi for Windows
winget upgrade --all
pause
goto menu

:drivers
color 0c
title The DarkWin tamagochi for Windows
wuauclt /detectnow
pause
goto menu

:exit
exit

:error
goto menu
