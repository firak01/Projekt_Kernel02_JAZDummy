cd\
cd server\script
start /wait onShutdown.bat
.\shutdown\shutdown.exe /L /T:30 "MSG:Server wird heruntergefahren."
exit