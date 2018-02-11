REM @echo off
net time \\127.0.0.1 /querysntp

REM mehrere Server URLs mit Leerzeichen voneinander getrennt
net time \\127.0.0.1 /setsntp:time.nist.gov ptbtime2.ptb.de
net time \\127.0.0.1 /SET /Y

REM query nicht gueltiger Befehl.... w32tm /query /peers

REM Das Stoppen des Service, soll ggfs. den UDP Port 123 (für SNTP) wieder zum "Binden" freigeben.
net stop w32time

REM Windows RessourceKit für den SleepBefehl notwendig
sleep 10

REM nun den Service wieder starten
net start w32time

w32tm /config /syncfromflags:manual /manualpeerlist:ptbtime2.ptb.de

REM /nowait wartet wohl nicht auf den Erfolg, der auch nicht eintritt...
w32tm /resync 

REM 20180211: Fehler soweit "Der Computer wurde nicht synchronisiert, da keine Zeitdaten verfügbar waren".
pause
EOF
