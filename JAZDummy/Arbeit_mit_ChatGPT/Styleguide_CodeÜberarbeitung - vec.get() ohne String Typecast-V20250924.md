# Styleguide für Code-Überarbeitungen ( (String) vec.get(Index) -> vec.get(Index).toString() )

## Ziel
Alle (String) vec.get(Index) Anweisungen werden konsistent ersetzt durch den Aufruf:
`vec.get(Index).toString();`.

## Regeln

1. **String Typecast bei Zuweisung einer String Variablen ersetzen**
   - Dies betrifft Elemente eines Vectors.
   - (String)-Casts sind gefährlich wenn das Element nicht nach String gecastet werden kann. Darum weglassen.
   - Hinter solch einem Ausdruck muss stattdesse .toString() stehen, um den Wert als String zu sichern.
   - Jeder Aufruf ähnlich wie unter --- Alt --- wird ersetzt durch einen Aufruf ähnlich wie unter --- Neu --- angegeben 
     ```java 
     // --- Alt ---
     (String) vec.get(Indexvariable);
     // --- Neu ---
   	vec.get(Indexvariable).toString();
   
2. **Struktur**
   - Ersetze immer direkt an der passenden Stelle. Optimiere nicht die Verwendung der Variablen oder benenne die Variablen um.
   - Lesbarkeit geht vor Kürze.

3. **Methoden, die keinen zu ersetzenden Code haben **
   - Methoden ohne `(String) vec.get(Indexvariable)` Aufrufe werden nicht gelöscht.
   - Sie bleiben vollständig erhalten, damit die Klasse weiterhin ihre vollständige Funktionalität bietet.
   
4. **Vorher/Nachher Beispiele**

````java
// --- Beispiel 1 ---
// Vorher
String sFormula0;
sFormula0 = (String) vec.get(0);

// Nachher
String sFormula0;
sFormula0 = vec.get(0).toString();

// --- Beispiel 2 ---
// Vorher
String sFormula1;
sFormula1 = (String) vec.get(1);

// Nachher
String sFormula1;
sFormula1 = vec.get(1).toString();
