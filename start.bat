:menu
@echo off & color 0f & cls & title start.bat creer par W - Developpement
mode 60,20
color f
echo.
echo         Programme de lancement de serveurs FiveM
echo.
echo        [1] Lancer Serveur     [2] Suprimer le cache
echo.
echo        [3] Besoin d'aide      [4] Faire une backup
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
color f
echo Lancement de votre serveur FiveM en cours...
ping localhost -n 5 >nul
echo.
cd /d D:\nomdossier
D:\nomdossier\FXServer.exe +exec server.cfg
ping localhost -n 8 >nul
echo.
echo Lancement du serveur reussi !
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit


:2
color f
echo -----------------------------------
echo Suprimation du dossier cache en Cours.....
echo -----------------------------------
ping localhost -n 8 >nul
RMDIR /s /q "D:\FXserver\cache\files"
echo.
echo Dossier cache suprimer avec succes !
ping localhost -n 5 >nul
exit

:3
echo.
color f
echo Rejoignez notre Discord : https://discord.gg/YW68Vs2tmR
echo.
echo Puis ouvrez un ticket
echo.
ping localhost -n 15 >nul
echo.
echo Fermeture du programme en cours...
ping localhost -n 10 >nul
exit

:4
color f
echo -----------------------------------
echo Creation d'une backup en cours...
echo -----------------------------------
ping localhost -n 8 >nul
XCOPY D:\FXserver D:\FXserver-backup\ /m /e /y
echo.
echo Backup cree avec succes !
ping localhost -n 5 >nul
exit
