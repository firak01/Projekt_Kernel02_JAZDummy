Autologon for Windows v3.01
Von Mark Russinovich
Veröffentlicht: 23. Feb 2011
Einführung

Autologon ermöglicht die einfache Konfiguration des in Windows integrierten "automatische Anmeldung"-Mechanismus. Anstatt auf die Eingabe von Benutzername und Passwort durch den Benutzer zu warten, verwendet Windows dabei die mit Autologon eingegebenen Anmeldeinformationen, die in der Registry verschlüsselt sind, um den angegebenen Benutzer automatisch anzumelden.

Autologon ist einfach in der Anwendung. Führen Sie einfach autolog.exe aus, füllen Sie das Dialogfeld aus, und klicken Sie auf „Enable“. Um die automatische Anmeldung zu deaktivieren, klicken Sie auf Disable. Wenn die Umschalttaste vor einer automatischen Anmeldung gedrückt und gehalten wird, wird die automatische Anmeldung für diese Sitzung deaktiviert. Sie können außerdem den Benutzernamen, die Domäne und das Kennwort als Befehlszeilenargumente übergeben: autologon user domain password