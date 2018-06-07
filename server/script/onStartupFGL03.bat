@echo off
echo.##########################################
echo.# Domino Server - 0 Byte Dateien löschen #
echo.# FGL03 Version vom 2009-02-14    by FGL #
echo.##########################################
REM Manchmal bleiben diese 0 Byte Dateien zurück und verhindern den Start des Domino Servers

set "notesdatadir=C:\Lotus\Domino\data"
del /F /Q %notesdatadir%\.jsc_cmd
del /F /Q %notesdatadir%\.jsc_lock
del /F /Q %notesdatadir\~notes.lck
exit

