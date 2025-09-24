# Styleguide für Code-Überarbeitungen (System.out → ObjectZZZ.logLineWithDate)

## Ziel
Alle System.out.println Anweisungen werden konsistent ersetzt durch den Aufruf:
`ObjectZZZ.logLineWithDate("...");`.

## Regeln

1. **System.out.println ersetzen**
   - Jeder Aufruf `System.out.println(...)` wird ersetzt durch:
   ```java
   ObjectZZZ.logLineWithDate("...");
   ```

2. **Keine Verwendung von ReflectCodeZZZ**
   - `ReflectCodeZZZ.getPositionCurrent()` wird in Log-Ausgaben **nicht mehr verwendet**.
   - `ReflectCodeZZZ.getPositionCurrent()` **bleibt bestehen* in ExceptionZZZ Aufrufen und Objektdefinitionen.
   - Beispiel:
   ```java
   ObjectZZZ.logLineWithDate("(D) JAR FILE FOUND.");
   ```

3. **sLog Variablen**
   - Wenn `sLog` nur für die Log-Ausgabe existiert und danach **nicht mehr benötigt wird**, dann:
     - Variable `sLog` löschen.
     - Direkte Übergabe an `ObjectZZZ.logLineWithDate(...)`.
   - Wenn `sLog` **später in Exceptions oder weiteren Methodenaufrufen** genutzt wird → **nicht löschen**.

4. **Struktur**
   - Logging-Aufrufe immer direkt an der passenden Stelle, keine doppelten Variablen oder unnötige Zwischenschritte.
   - Lesbarkeit geht vor Kürze.

5. **Blockmarken**
   - Alle benannten Blöcke (z.B. `main:{ ... }`) müssen erhalten bleiben.
   - Diese dienen der Lesbarkeit und Strukturierung und vermeiden komplizierte if-Verschachtelungen.
   - Blöcke werden nicht entfernt oder zusammengezogen, auch wenn sie redundant wirken.

6. **Kommentare & Dokumentation**
   - Alle existierenden Kommentare und Kommentarblöcke werden beibehalten.
   - Auch Kommentare innerhalb von Methoden (z. B. Hinweise zu temporären Dateien, Besonderheiten bei JAR-Zugriffen) bleiben unverändert.
   - Alle Kommentare einer Zeile (also `//` eingeleitete Kommentare) bleiben erhalten, auch wenn sie am Ende stehen hinter ausführbarem Code.
   - Das bedeutet, dass alle Klassenkommentare, auch Javadoc-Kommentare über den Klassen, Methodenkommentare, auch Javadoc-Kommentare über den Methoden, unbedingt erhalten bleiben müssen, auch wenn sie lang oder redundant wirken.

7. **Methoden, die kein Logging enthalten**
   - Methoden ohne `System.out.println` Aufrufe werden nicht gelöscht.
   - Sie bleiben vollständig erhalten, damit die Klasse weiterhin ihre vollständige Funktionalität bietet.

8. **Vorher/Nachher Beispiele**

````java
// --- Beispiel 1 ---
// Vorher
String sLog = ReflectCodeZZZ.getPositionCurrent()+": (D) JAR FILE FOUND.";
System.out.println(sLog);

// Nachher
ObjectZZZ.logLineWithDate("(D) JAR FILE FOUND;");

// --- Beispiel 2 ---
// Vorher
int count = list.size();
System.out.println("Anzahl: " + count);

// Nachher
ObjectZZZ.logLineWithDate("Anzahl: " + list.size());
