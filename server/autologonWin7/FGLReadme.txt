Autologon for Windows v3.01
Von Mark Russinovich
Ver�ffentlicht: 23. Feb 2011
Einf�hrung

Autologon erm�glicht die einfache Konfiguration des in Windows integrierten "automatische Anmeldung"-Mechanismus. Anstatt auf die Eingabe von Benutzername und Passwort durch den Benutzer zu warten, verwendet Windows dabei die mit Autologon eingegebenen Anmeldeinformationen, die in der Registry verschl�sselt sind, um den angegebenen Benutzer automatisch anzumelden.

Autologon ist einfach in der Anwendung. F�hren Sie einfach autolog.exe aus, f�llen Sie das Dialogfeld aus, und klicken Sie auf �Enable�. Um die automatische Anmeldung zu deaktivieren, klicken Sie auf Disable. Wenn die Umschalttaste vor einer automatischen Anmeldung gedr�ckt und gehalten wird, wird die automatische Anmeldung f�r diese Sitzung deaktiviert. Sie k�nnen au�erdem den Benutzernamen, die Dom�ne und das Kennwort als Befehlszeilenargumente �bergeben: autologon user domain password