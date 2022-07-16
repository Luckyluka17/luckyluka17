@echo off
title Crossy Road Cheat
chcp 65001
cd %cd%
taskkill /f /im "Crossy Road.exe"
del /f /q cheat.dat
cls
if EXIST C:\Users\%username%\AppData\Local\Packages\Yodo1Ltd.CrossyRoad_s3s3f300emkze\ goto :1
goto :error

:error
cls
echo Le jeu n'est pas installé.

:1
cls
echo -----------------------------------------------------------------
echo  Merci d'avoir installé ce Script. Il va modifier automatiquement
echo les fichiers de votre jeu afin d'activer les cheats (tout les
echo personnages sont débloqués).
echo -----------------------------------------------------------------
echo Téléchargement du Script :
curl "https://pastebin.com/raw/SFk8jr6Y" -o "cheat.dat"
echo -----------------------------------------------------------------
echo Copie du cheat dans le dossier de votre jeu :
ren cheat.dat CloudBackupSave.dat
copy CloudBackupSave.dat C:\Users\%username%\AppData\Local\Packages\Yodo1Ltd.CrossyRoad_s3s3f300emkze\LocalState
ren CloudBackupSave.dat latest-save.dat
copy latest-save.dat C:\Users\%username%\AppData\Local\Packages\Yodo1Ltd.CrossyRoad_s3s3f300emkze\RoamingState
ren latest-save.dat cheat.dat
echo -----------------------------------------------------------------
del /f /q cheat.dat
echo Cheat activé, appuyez sur une touche pour quitter.
pause >nul
exit