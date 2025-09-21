# Dokumentationstitel

Dies ist ein einleitender Fließtext. Er kann **fett**, *kursiv* oder `inline-code` enthalten.

---

## Abschnitt 1: Listen

### Geordnete Liste
1. Erstes Element
2. Zweites Element
3. Drittes Element

### Ungeordnete Liste
- Punkt A
- Punkt B
  - Unterpunkt B1
  - Unterpunkt B2
- Punkt C

---

## Abschnitt 2: Tabellen

| Name        | Alter | Beruf        |
|------------|------|-------------|
| Max Mustermann | 30   | Entwickler  |
| Anna Beispiel  | 25   | Designer    |
| John Doe       | 40   | Manager     |

---

## Abschnitt 3: Zitate und Hervorhebungen

> Dies ist ein Blockzitat. Es kann längere Texte oder Hinweise enthalten.

**Hinweis:** Achte darauf, dass alle wichtigen Punkte hervorgehoben werden.

---

## Abschnitt 4: Links und Bilder

[Beispiel-Link](https://www.example.com)  
![Beispiel-Bild](https://via.placeholder.com/150)

---

## Abschnitt 5: Sonderzeichen und Emojis

Sonderzeichen: `@ # $ % & * ( )`  
Emoji-Beispiel: 😀 🚀 ✨

---

## Abschnitt 6: Fußnoten

Dies ist ein Satz mit einer Fußnote[^1].

[^1]: Das ist die Fußnote.

---

## Abschnitt 7: Codebeispiele (Refactoring Java)

#### Vorher/Nachher Beispiele
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
