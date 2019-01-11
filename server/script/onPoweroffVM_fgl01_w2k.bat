@REM ########################################################################
@REM # Shutdown Script, wenn Maschine über den VMWare PowerOff button beendet wird
@REM # W2K Version 20090214 by FGL
@REM ########################################################################

REM Warte auf den Domino Server
start /wait c:\server\script\onShutdownW2K.bat
