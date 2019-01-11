
REM Versuch die Energenie Stromleiste anzupingen. 
REM Ziel: Ggfs. sie neu zu finden um den Befehl eine Steckdose auszustellen absetzen zu können.
REM ABER: Leider ist die Stromleisten Applikation schon beendet, bevor dieses Script läuft.
REM       Daher funktioniet das so nicht.
cd \
cd 1fgl\server\script\PowerManagerEnergenieLAN
start .\"PingPowerManagerEnergenie.bat"

REM das Konselenfenster schliessen. Das ist wichtig, falls ein aufrufendes Programm auf das Ende der Batch wartet.
exit