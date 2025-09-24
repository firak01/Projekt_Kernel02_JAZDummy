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


5. **Methoden, die kein Logging enthalten**
   - Methoden ohne `System.out.println` Aufrufe werden nicht gelöscht.
   - Sie bleiben vollständig erhalten, damit die Klasse weiterhin ihre vollständige Funktionalität bietet.

6. **Vorher/Nachher Beispiele**

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
