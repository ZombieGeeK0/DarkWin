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
echo [4]: Iniciar programas antiguos o fuera de acceso de Windows
echo ------------------------------------------------------------------------------------------------------
set /p choice= [+] INGRESE LA OPCION QUE HA ELEGIDO: 
if /i %choice%==0 goto exit
if /i %choice%==1 goto verify
if /i %choice%==2 goto clean
if /i %choice%==3 goto vbs
if /i %choice%==4 goto access
if not /i exist %choice%: goto error

:verify
color 0c
title The DarkWin tamagochi for Windows
powercfg /energy
pause
goto menu

:clean
color 0c
title The DarkWin tamagochi for Windows
cleanmgr & sfc /scannow & dism /online /cleanup-image /restorehealth & chkdsk C: /f /r & dism.exe /online /Cleanup-Image /StartComponentCleanup
pause
goto menu

:vbs
color 0c
title The DarkWin tamagochi for Windows
cd %homedrive%/windows/system32 & start wscript.exe
pause
goto menu

:access
color 0c
cls
title The DarkWin tamagochi for Windows
echo The DarkWin tamagochi for Windows
echo ------------------------------------------------------------------------------------------------------
echo [0]: Salir
echo [1]: Volver al menu
echo [2]: Iniciar el WorkPad de Windows
echo [3]: Iniciar la ventana de control de WmiMgmt (WmiMgmt.msc)
echo [4]: Inciar el fax y escaner de Windows
echo [5]: Iniciar Windows defender firewall con seguridad avanzada
echo [6]: Iniciar configuracion del harware de seguridad TPM
echo [7]: Iniciar administracion del modulo de la plataforma segura (TPM) en el equipo local
echo [8]: Iniciar el mezclador de volumen del sistema
echo [9]: Iniciar datos del Windows script host
echo [10]: Iniciar configuracion de la firma del archivo
echo [11]: Iniciar el asistente para crear una carpeta compartida
echo [12]: Iniciar los servicios locales del sistema
echo [13]: Iniciar restauracion de archivos del sistema
echo [14]: Iniciar salvapantallas (ribbons)
echo [15]: Iniciar el monitor de recursos
echo [16]: Iniciar el creador de una unidad de recuperacion
echo [17]: Iniciar el PhotoScreenSaver
echo [18]: Iniciar el setup de OneDrive
echo [19]: Iniciar la interfaz de nslookup
echo [20]: Iniciar el administrador de cuentas de usuario
echo [21]: Iniciar el salvapantallas (mystify)
echo [22]: Iniciar la asistencia remota de Windows
echo [23]: Iniciar la herramienta de diagnostico del soporte tecnico de Windows
echo ------------------------------------------------------------------------------------------------------
set /p choice= [+] INGRESE LA OPCION QUE HA ELEGIDO: 
if /i %choice%==0 goto exit
if /i %choice%==1 goto go
if /i %choice%==2 goto workpad
if /i %choice%==3 goto wmi
if /i %choice%==4 goto fax
if /i %choice%==5 goto firewall
if /i %choice%==6 goto tpm
if /i %choice%==7 goto tpmconf
if /i %choice%==8 goto vol
if /i %choice%==9 goto script
if /i %choice%==10 goto sign
if /i %choice%==11 goto folder
if /i %choice%==12 goto services
if /i %choice%==13 goto restore
if /i %choice%==14 goto screensaver
if /i %choice%==15 goto resources
if /i %choice%==16 goto rec
if /i %choice%==17 goto saver
if /i %choice%==18 goto onedrive
if /i %choice%==19 goto look
if /i %choice%==20 goto counts
if /i %choice%==21 goto mys
if /i %choice%==22 goto asistence
if /i %choice%==23 goto tool
if not /i exist %choice%: goto error

:workpad
cd %homedrive%/windows/system32 & start write.exe
goto menu

:wmi
cd %homedrive%/windows/system32 & start WmiMgmt.msc
goto menu

:fax
cd %homedrive%/windows/system32 & start WFS.exe
goto menu

:firewall
cd %homedrive%/windows/system32 & start WF.msc
goto menu

:tpm
cd %homedrive%/windows/system32 & start TpmInit.exe
goto menu

:tpmconf
cd %homedrive%/windows/system32 & start tpm.msc
goto menu

:vol
cd %homedrive%/windows/system32 & start SndVol.exe
goto menu

:vol
cd %homedrive%/windows/system32 & start slmgr.vbs
goto menu

:sign
cd %homedrive%/windows/system32 & start sigverif.exe
goto menu

:folder
cd %homedrive%/windows/system32 & start shrpubw.exe
goto menu

:services
cd %homedrive%/windows/system32 & start services.msc
goto menu

:restore
cd %homedrive%/windows/system32 & start rstrui.exe
goto menu

:screensaver
cd %homedrive%/windows/system32 & start Ribbons.scr
goto menu

:resources
cd %homedrive%/windows/system32 & start resmon.exe
goto menu

:rec
cd %homedrive%/windows/system32 & start RecoveryDrive.exe
goto menu

:saver
cd %homedrive%/windows/system32 & start PhotoScreensaver.scr
goto menu

:onedrive
cd %homedrive%/windows/system32 & start OneDriveSetup.exe
goto menu

:look
cd %homedrive%/windows/system32 & start nslookup.exe
goto menu

:counts
cd %homedrive%/windows/system32 & start Netplwiz.exe
goto menu

:mys
cd %homedrive%/windows/system32 & start Mystify.scr
goto menu

:asistence
cd %homedrive%/windows/system32 & start msra.exe
goto menu

:tool
cd %homedrive%/windows/system32 & start msdt.exe
goto menu

:go
goto menu

:exit
exit

:error
goto menu
