# Styleguide für Code-Überarbeitungen (1 COMMON SETTINGS)

## Ziel
Alle Blockmarken und Kommentare bleiben erhalten

## Regeln

1. **Blockmarken**
   - Alle benannten Blöcke (z.B. `main:{ ... }`) müssen erhalten bleiben.
   - Diese dienen der Lesbarkeit und Strukturierung und vermeiden komplizierte if-Verschachtelungen.
   - Blöcke werden nicht entfernt oder zusammengezogen, auch wenn sie redundant wirken.

2. **Kommentare & Dokumentation**
   - Alle existierenden Kommentare und Kommentarblöcke werden beibehalten.
   - Auch Kommentare innerhalb von Methoden (z. B. Hinweise zu temporären Dateien, Besonderheiten bei JAR-Zugriffen) bleiben unverändert.
   - Alle Kommentare einer Zeile (also `//` eingeleitete Kommentare) bleiben erhalten, auch wenn sie am Ende stehen hinter ausführbarem Code.
   - Das bedeutet, dass alle Klassenkommentare, auch Javadoc-Kommentare über den Klassen, Methodenkommentare, auch Javadoc-Kommentare über den Methoden, unbedingt erhalten bleiben müssen, auch wenn sie lang oder redundant wirken.
