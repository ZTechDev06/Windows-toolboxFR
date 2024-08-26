@echo off
:startup
cls
set ver=1.0
:menu
cls
echo Benvenuto nella School Toolkit!
echo 1. Strumenti per PC della scuola
echo 2. Siti utili
echo 9. Strumenti random
echo ?. Aiuto
echo 0. Esci
set /P choice=Scegli...
if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="9" goto 9
if "%choice%"=="?" goto help
exit

:1
cls
echo Tool per PC della scuola
echo 1. File Explorer Terminator
echo 2. Riavvia il PC
echo 3. Crea un nuovo utente
echo 0. Vai al menu
set /P tools=Scegli...
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
echo Questo strumento funziona *solo* se la toolkit è avviata come amministratore.
pause
set /P user=Come vuoi chiamare l'utente?
net user %user% /add
net localgroup Administrators /add %user%
goto 1

:2
cls
echo Siti utili
echo 1. Giochi
echo 2. Chatbot AI
echo 3. Registri elettronici
echo 4. Siti "scolastici"
echo 4. Guide random
echo 6. Downloads
echo 9. Custom
echo 0. Vai al menu
set /P sites=Scegli...
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
echo Giochi
echo 1. poki (molti giochi insieme)
echo 2. Slowroads (corse)
echo 3. 1v1.lol (shooter)
echo 4. krunier (shooter)
echo 0. Vai a Siti utili
set /P games=Scegli...
if "%games%"=="1" start https://poki.it
if "%games%"=="2" start https://slowroads.io
if "%games%"=="3" start https://1v1.lol
if "%games%"=="4" start https://krunker.io
if "%games%"==0 goto 2
goto 2

:ai
cls
echo Chatbot AI
echo 1. ChatGPT
echo 2. Microsoft Copilot
echo 3. Google Gemini
echo 4. PizzaGPT
echo 5. CharacterAI
echo 0. Vai a Siti utili
set /P ai=Scegli...
if "%ai%"=="1" start https://chatgpt.com
if "%ai%"=="2" start https://copilot.microsoft.com
if "%ai%"=="3" start https://gemini.google.com/app
if "%ai%"=="4" start https://www.pizzagpt.it/
if "%ai%"=="5" start https://www.character.ai/
if" %ai%"==0 goto 2
goto 2

:registries
cls
echo Registri elettronici
echo 1. ClasseViva
echo 0. Vai a Siti utili
set /P registries=Scegli...
if "%registries%"=="1" start https://web.spaggiari.eu
if "%registries%"==0 goto 2
goto 2

:schoolsites
cls
echo 1. Google Classroom
echo 2. Canva
echo 0. Vai a Siti utili
set /P schoolsites=Scegli...
if "%schoolsites%"=="1" start https://classroom.google.com
if "%schoolsites%"=="2" start https://canva.com
if" %schoolsites%"==0 goto 2
goto 2

:guides
cls
echo 1. Come copiare bene (28 modi)
echo 2. Come studiare in modo produttivo
echo 0. Vai a Siti utili
set /P guides=Scegli...
if "%guides%"=="1" start https://www.wikihow.it/Copiare-Durante-un-Compito-in-Classe-Utilizzando-il-Materiale-Scolastico
if "%guides%"=="2" start https://www.wikihow.it/Studiare-Bene
if "%guides%"==0 goto 2
goto 2

:downloads
cls
echo Questa pagina è fatta per scaricare software utili su un PC.
echo 1. Chrome
echo 2. Brave Browser
echo 3. Firefox
echo 4. Windows e Office
echo 5. Microsoft Activation Scripts
echo 6. StartAllBack
echo 0. Vai a Siti utili
set /P downloads=Scegli...
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
echo Benvenuto nel CLIBrowser!
echo Questo browser userà il browser predefinito del sistema operativo per tutto quello che non è inserire l'URL.
echo Inserisci l'URL qui
Se vuoi tornare alla sezione Siti utili premi 0
set /P url=
start https://%url%
if %url%=="0" goto 2
goto 2

:9
cls
echo Questi sono strumenti random che non sapevo dove mettere :)
echo 1. Controlla la versione di Windows installata
echo 2. Apri app di sistema
echo 0. Vai al menu
set /P random=Scegli...
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
echo Apri delle app di sistema da qui
echo 1. Esplora File
echo 2. Prompt dei comandi
echo 3. Windows Powershell
echo 4. Pannello di controllo
echo 5. Gestione attività
echo 6. Winver
echo 0. Vai a Strumenti random
set /P systemapps=Scegli...
if "%systemapps%"=="1" explorer
if "%systemapps%"=="2" cmd
if "%systemapps%"=="3" powershell
if "%systemapps%"=="4" control
if "%systemapps%"=="5" taskmgr
if "%random%"==0 goto menu
goto 9

:help
cls
echo Questo programma è fatto per dare agli studenti un posto per tutto quello che gli può servire.
echo Versione: %ver%
pause
goto menu