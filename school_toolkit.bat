@echo off
:startup
cls
set ver=1.0
:menu
cls
echo Bienvenue dans Toolkit!
echo 1. Outils pour le PC 
echo 2. Sites utiles
echo 9. Outils divers
echo ?. Aide
echo 0. Quitter
set /P choice=Choisissez...
if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="9" goto 9
if "%choice%"=="?" goto help
exit

:1
cls
echo Outils pour le PC de l'école
echo 1. Terminateur de l'Explorateur de fichiers
echo 2. Redémarrer le PC
echo 3. Créer un nouvel utilisateur
echo 0. Retourner au menu
set /P tools=Choisissez...
if %tools%==1 goto terminatefe
if %tools%==2 goto restartpc
if %tools%==3 goto usercreate
if %tools%==0 goto menu
goto menu

:terminatefe
taskkill /f /im explorer.exe
goto 1

:restartpc
shutdown -r -t 0
goto 1

:usercreate
cls
echo Cet outil fonctionne *uniquement* si le toolkit est lancé en tant qu'administrateur.
pause
set /P user=Comment voulez-vous nommer l'utilisateur?
net user %user% /add
net localgroup Administrators /add %user%
goto 1

:2
cls
echo Sites utiles
echo 1. Jeux
echo 2. Chatbots IA
echo 3. Registres électroniques
echo 4. Sites scolaires
echo 5. Guides divers
echo 6. Téléchargements
echo 9. Personnalisé
echo 0. Retourner au menu
set /P sites=Choisissez...
if "%sites%"=="1" goto games
if "%sites%"=="2" goto AI
if "%sites%"=="3" goto registries
if "%sites%"=="4" goto schoolsites
if "%sites%"=="5" goto guides
if "%sites%"=="6" goto downloads
if "%sites%"=="9" goto clibrowser
if %tools%==0 goto menu
goto menu

:games
cls
echo Jeux
echo 1. Poki (nombreux jeux)
echo 2. Slowroads (course)
echo 3. 1v1.lol (shooter)
echo 4. Krunker (shooter)
echo 0. Retourner aux sites utiles
set /P games=Choisissez...
if "%games%"=="1" start https://poki.it
if "%games%"=="2" start https://slowroads.io
if "%games%"=="3" start https://1v1.lol
if "%games%"=="4" start https://krunker.io
if "%games%"==0 goto 2
goto 2

:ai
cls
echo Chatbots IA
echo 1. ChatGPT
echo 2. Microsoft Copilot
echo 3. Google Gemini
echo 4. PizzaGPT
echo 5. CharacterAI
echo 0. Retourner aux sites utiles
set /P ai=Choisissez...
if "%ai%"=="1" start https://chatgpt.com
if "%ai%"=="2" start https://copilot.microsoft.com
if "%ai%"=="3" start https://gemini.google.com/app
if "%ai%"=="4" start https://www.pizzagpt.it/
if "%ai%"=="5" start https://www.character.ai/
if "%ai%"=="0" goto 2
goto 2

:registries
cls
echo Registres électroniques
echo 1. ClasseViva
echo 0. Retourner aux sites utiles
set /P registries=Choisissez...
if "%registries%"=="1" start https://web.spaggiari.eu
if "%registries%"==0 goto 2
goto 2

:schoolsites
cls
echo Sites scolaires
echo 1. Google Classroom
echo 2. Canva
echo 0. Retourner aux sites utiles
set /P schoolsites=Choisissez...
if "%schoolsites%"=="1" start https://classroom.google.com
if "%schoolsites%"=="2" start https://canva.com
if "%schoolsites%"=="0" goto 2
goto 2

:guides
cls
echo Guides divers
echo 1. Comment bien copier (28 méthodes)
echo 2. Comment étudier de manière productive
echo 0. Retourner aux sites utiles
set /P guides=Choisissez...
if "%guides%"=="1" start https://www.wikihow.it/Copiare-Durante-un-Compito-in-Classe-Utilizzando-il-Materiale-Scolastico
if "%guides%"=="2" start https://www.wikihow.it/Studiare-Bene
if "%guides%"==0 goto 2
goto 2

:downloads
cls
echo Cette section est dédiée à télécharger des logiciels utiles sur un PC.
echo 1. Chrome
echo 2. Brave Browser
echo 3. Firefox
echo 4. Windows et Office
echo 5. Microsoft Activation Scripts
echo 6. StartAllBack
echo 0. Retourner aux sites utiles
set /P downloads=Choisissez...
if "%downloads%"=="1" start https://www.chrome.google.com
if "%downloads%"=="2" start https://www.mozilla.org/firefox/new/
if "%downloads%"=="3" start https://brave.com/
if "%downloads%"=="4" start https://massgrave.dev/genuine-installation-media
if "%downloads%"=="5" start https://github.com/massgravel/Microsoft-Activation-Scripts
if "%downloads%"=="6" start https://www.startallback.com/
if "%downloads%"=="0" goto 2
goto 2

:clibrowser
cls
echo Bienvenue dans CLIBrowser!
echo Ce navigateur utilise le navigateur par défaut du système pour tout ce qui n'est pas l'URL.
echo Entrez l'URL ici
Pour retourner à la section Sites utiles, tapez 0
set /P url=
start https://%url%
if %url%=="0" goto 2
goto 2

:9
cls
echo Voici des outils divers que je ne savais pas où mettre :)
echo 1. Vérifier la version de Windows installée
echo 2. Ouvrir les applications système
echo 0. Retourner au menu
set /P random=Choisissez...
if "%random%"=="1" goto cliwinver
if "%random%"=="2" goto systemapps
if "%random%"==0 goto menu
goto menu

:cliwinver
cls
ver
pause
goto 9

:systemapps
cls
echo Ouvrir des applications système ici
echo 1. Explorateur de fichiers
echo 2. Invite de commandes
echo 3. Windows Powershell
echo 4. Panneau de configuration
echo 5. Gestionnaire des tâches
echo 6. Winver
echo 0. Retourner aux outils divers
set /P systemapps=Choisissez...
if "%systemapps%"=="1" explorer
if "%systemapps%"=="2" cmd
if "%systemapps%"=="3" powershell
if "%systemapps%"=="4" control
if "%systemapps%"=="5" taskmgr
if "%random%"==0 goto menu
goto 9

:help
cls
echo Ce programme est conçu pour fournir aux étudiants un endroit pour tout ce dont ils pourraient avoir besoin.
echo Version: %ver%
pause
goto menu
