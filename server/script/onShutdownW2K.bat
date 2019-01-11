@echo off
REM mit doppelten anf�hrungszeichen :: werden kommentare eingeleitet, aber ich verwende doch besser rem
REM echo on / off gibt an, ob die Befehlszeile ausgegeben werden soll
REM man sollte dt. Umlaute vermeiden !!!

echo.##############################################
echo.# Batch zum Herunterfahren des Domino Severs #
echo.# W2K Version 2009-02-12 by FGL              #
echo.##############################################

set "sTsk=nserver.exe"�
set icount=0
set "serror=Fehler: "
set "bQuitDone=ZFalse"
cd\
cd server\script

REM #### Gefakte Schleife #########################################################
:dominoWaitForEnd
set "bIsRunning=ZFalse"
REM Gibt die Tasks aus:  for /f %%i in ('tasklist') do echo.(%%i)
REM Die Ausgabe der Tasks wird auf den GESUCHTEN reduziert UND es wird nix am Bildschirm ausgegben, wg. des Pipe.
REM set bIsRunning=for /f %%i in ('tasklist') do echo (%%i)|findstr /C:"(%sTsk%)" >nul && set "bIsRunning=ZTrue"
REM Es wird ein "Taskinformationen werden geladen" am Bildschirm ausgegeben. Wendet man das: set bIsRunning an, wird das nicht ausgegeben.
REM for /f %%i in ('tasklist') do echo (%%i)|findstr /C:"(%sTsk%)" >nul && set "bIsRunning=ZTrue"

REM Der unter W2K benutztbare tlist Befehl liefert ein anders Ergebnis (Die Datei muss aus dem Service.cab der Installtionscd geholt werden)
REM Es ist quasi die 2. Spalte (wenn das Leerzeichen ein Trenner ist) gemeint
for /f "tokens=2 delims= " %%i in ('.\w2kTool\tlist') do echo (%%i)|findstr /C:"(%sTsk%)" >nul && set "bIsRunning=ZTrue"


REM original if not defined Running ( goto Pauseit ) else ( goto dominoEndTrue )
REM ausprobieren if is defined bIsRunning goto dominoEndTrue
echo.bIsRunning=%bIsRunning%

REM hier vergleich, ABER: den Vergleichstring nicht in Anf�hrungszeichen !!!
REM Beachte auch dass mit AND nicht gearbeitet werden kann. && hat auch eine andere Bedeutung.
if %bQuitDone%==ZFalse if %bIsRunning%==ZTrue (goto dominoQuit) else (echo.Server laeuft gar nicht.)

REM -- das Pausieren mit dem Timeout durchf�hren ---
set /a icount=%icount%+1

if %icount% GEQ 50 (
REM WICHTIG ist, dass keine leerzeichen vor und hinter dem Gleichheitszeichen steht
  set "serror=%serror% Timeout erreicht"
  goto dominoEndFalse
)
if %bIsRunning%==ZFalse (goto dominoEndTrue) else (goto Pauseit)

REM #### SPRUNGMAKREN ################################################################
:DominoQuit
echo.
echo.
echo.Versuche Domino Server zu beenden.
echo.Quit Befehl an Serverkonsole uebergeben...

REM nicht mit dem Wait befehl arbeiten, da das Konsolenfenster der neuen Batch sich nicht schliesst start /wait .\Domino\ServerDominoQuit.bat 
REM ausser die Batch schliesst explizit das konsolenfenster mit einem exit befehl
REM ABER: Wenn der server nicht mehr l�uft, dann kann die konsole nix mehr entgegennehmen. Darum nicht verwenden:
REM start /wait .\Domino\ServerDominoQuit.bat 
start .\Domino\ServerDominoQuit.bat

set "bQuitDone=ZTrue"
echo.Quit Befehl wurde uebergeben. Warte auf das Beenden des Servers...

REM das heisst aber nicht, dass der Server als Windows Task schon beendet ist. Daher:
goto dominoWaitForEnd


:Pauseit
REM Das Label darf nicht pause heissen !!!
REM 15 s pause�MERKE Der Doppelte Doppelpunkt macht eine Zeile zum Kommentar
set /a iout = %icount% *15
echo.ca. %iout% Sekunden schon gewartet (%icount%)
REM Missbrauch des ping befehls um ein warten zu implementieren
ping -n 15 localhost>nul�
goto dominoWaitForEnd

:dominoEndFalse
REM screen nicht l�schen ... cls
echo.
echo.
echo.Domino Server als Windows Task NICHT beendet. %serror%
goto batchend


:dominoEndTrue
REM screen nicht l�schen ... cls
echo.
echo.
if %bQuitDone%==ZTrue (echo.Domino Server als Windows Task beendet. Beende Batch.) else (echo.Beende Batch.)
goto batchend


::#################################################
:batchend
REM Die nul datei l�schen. /F ist schreibgesch�tz l�schen erzwingen und /Q ist ohne R�ckfrage. 
REM Wenn nix passiert ist (mit dem ping warten) dann muss auch nix gel�scht werden bzw. ist sogar nix zum L�schen da.
if %bQuitDone%==ZTrue del /F/Q .\nul?

echo.##############################################
echo.# Batch ENDE                                 #
echo.##############################################
REM Missbrauch des ping befehls um ein warten zu implementieren
ping -n 15 localhost>nul�

REM das konsolenfenster schliessen. Was wichtig ist, falls ein aufrufendes Programm auf das ende des Batch-Tasks wartet.
exit
