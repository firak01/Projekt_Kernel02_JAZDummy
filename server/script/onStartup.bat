@echo off
echo.##########################################
echo.# Domino Server - 0 Byte Dateien löschen #
echo.# Version vom 2009-02-12 by FGL          #
echo.##########################################
REM Manchmal bleiben diese 0 Byte Dateien zurück und verhindern den Start des Domino Servers

del /F /Q c:\lotus\domino\data\.jsc_cmd
del /F /Q c:\lotus\domino\data\.jsc_lock
del /F /Q c:\lotus\domino\data\~notes.lck
exit

