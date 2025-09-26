# Styleguide für Code-Überarbeitungen (1 COMMON SETTINGS)

## Ziel
Alle Vergleichbarkeit mit altem Code erhalten und Lauffähigkeit sicherstellen

## Regeln

2. **Java 7**
   - Bisheriger Code wird unter Java 7 verwendet. Der Code muss entsprechend für Java 7 lauffähig bleiben.
   
2. **Für die Vergleichbarkeit alter und neuer Version**
   - Alle existierenden Methoden der Klasse werden beibehalten.
   - Die Reihenfolge der Methoden der Klasse wird nicht verändert.  
   - Die Namen der Methoden der Klasse werden nicht verändert.
   - Die Signatur der Methoden der Klasse werden nicht verändert.

3. **Blockmarken**
   - Alle benannten Blöcke (z.B. `main:{ ... }`) müssen erhalten bleiben.
   - Diese dienen der Lesbarkeit und Strukturierung und vermeiden komplizierte if-Verschachtelungen.
   - Blöcke werden nicht entfernt oder zusammengezogen, auch wenn sie redundant wirken.

4. **Kommentare & Dokumentation**
   - Es werden keine neuen Kommentare hinzugefügt
   - Alle existierenden Kommentare und Kommentarblöcke werden beibehalten.
   - Auch Kommentare innerhalb von Methoden (z. B. Hinweise zu temporären Dateien, Besonderheiten bei JAR-Zugriffen) bleiben unverändert.
   - Alle Kommentare einer Zeile (also `//` eingeleitete Kommentare) bleiben erhalten, auch wenn sie am Ende stehen hinter ausführbarem Code.
   - Das bedeutet, dass alle Klassenkommentare, auch Javadoc-Kommentare über den Klassen, Methodenkommentare, auch Javadoc-Kommentare über den Methoden, unbedingt erhalten bleiben müssen, auch wenn sie lang oder redundant wirken.
   