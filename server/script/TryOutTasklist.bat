set "bIsRunning=ZFalse"
tasklist > TryOutTasklistResult.txt
:: Da alle Werte in einer Schleife durchgegangen wird ist so bIsRunning der letzte Wert for /f %%i in ('tasklist') do echo (%%i)|findstr /C:"(%sTsk%)" >nul && set "bIsRunning=True" || set "bIsRunning=False"
for /f %%i in ('tasklist') do echo (%%i)|findstr /C:"(%sTsk%)" >nul && set "bIsRunning=ZTrue"
echo.bIsRunning=%bIsRunning% >> TryOutTasklistResult.txt

notepad TryOutTasklistResult.txt