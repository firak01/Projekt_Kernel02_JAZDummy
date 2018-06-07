@echo off
set "TSK= nserver.exe"
set "bIsRunning=ZFalse"
.\w2kTool\tlist > TryOutTlistW2KResult.txt

:: Da alle Werte in einer Schleife durchgegangen wird ist so bIsRunning der letzte Wert for /f %%i in ('tasklist') do echo (%%i)|findstr /C:"(%sTsk%)" >nul && set "bIsRunning=True" || set "bIsRunning=False"
::for /f %%i in ('tasklist') do echo (%%i)|findstr /I /G /C:"(%sTsk%)" >nul && set "bIsRunning=ZTrue"
::Da aber tlist unter W2K anders ausiesieht, muss man den Wert daraus anders extrahieren

REM Es ist quasi die 2. Spalte (wenn das Leerzeichen ein Trenner ist) gemeint
for /f "tokens=2 delims= " %%i in ('.\w2kTool\tlist') do echo (%%i)|findstr /C:"(%sTsk%)" >TryOutTlistW2KResultFindstr.txt && set "bIsRunning=ZTrue"


echo.bIsRunning=%bIsRunning% >> TryOutTlistW2KResult.txt

notepad TryOutTlistW2KResult.txt
