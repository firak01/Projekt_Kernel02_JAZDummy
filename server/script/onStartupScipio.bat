@echo offf
REM Starte nach dem Einschalten alle angeschlossenen Rechner
REM #######################################################
echo WARTE ERST EINIGE ZEIT -  REchner SOLL FERTIG SEIN UND NETZWERK SOLL AKTIV SEIN
sleep 240
 
echo ################################################################
echo VERSUCHE DEN RECHNER ALARICH ZU STARTEN
sleep 30
REM call C:\1fgl\server\WakeOnLAN\mc-wol\wolAlarichFGL.bat
start C:\1fgl\server\WakeOnLAN\mc-wol\wolAlarichFGL.bat

REM echo ################################################################
REM echo VERSUCHE DEN RECHNER PATTON ZU STARTEN
REM sleep 10
REM call C:\1fgl\server\WakeOnLAN\mc-wol\wolPattonFGL.bat


@echo on
REM Fahre den Rechner wieder automatisch herunter
echo ################################################################
echo VERSUCHE DEN RECHNER SCIPIO WIEDER HERUNTERZUFAHREN
sleep 30
REM call C:\1fgl\server\script\shutdownNoRestartScipioHost.bat
start C:\1fgl\server\script\shutdownNoRestartScipioHost.bat


pause
exit