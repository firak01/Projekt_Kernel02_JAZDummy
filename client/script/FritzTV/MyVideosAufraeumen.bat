@echo aufräumen des Verzeichnisses myVideos
REM Entfernt Indexfile etc. aus dem MyVideos Verzeichnis.
pause

@echo on
cd \
cd MyVideos
del *.idx
del *.fif
del *.xml
del *.html
pause