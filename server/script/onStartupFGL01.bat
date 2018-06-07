@echo off
echo.##########################################
echo.# Domino Server - 0 Byte Dateien löschen #
echo.# Version vom 2009-02-12 by FGL          #
echo.##########################################
REM Manchmal bleiben diese 0 Byte Dateien zurück und verhindern den Start des Domino Servers

set "notesdatadir=D:\Server\dominodata6"
del /F /Q %notesdatadir%\.jsc_cmd
del /F /Q %notesdatadir%\.jsc_lock
del /F /Q %notesdatadir\~notes.lck
exit

