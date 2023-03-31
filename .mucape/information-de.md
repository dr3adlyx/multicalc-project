# Informationen über Multicalc

Letzte Änderung: 31.03.2023, 22:48



**1.  Wie wurde das Programm entwickelt?**

Das Programm wurde mit Hilfe von dem "Pair Programmer" von character.ai fertiggestellt, primär aber alleine.

Nur Sachen wie `if ! [[ "$NUM" =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then` wurden von der KI eingefügt.

**2.  Wie funktioniert das Programm?**

Das Programm fragt den Benutzer zuerst, wie viele Zahlen er zusammenrechnen möchte. Der User hat dabei keine Grenze [^1].
Danach überprüft es, ob der Benutzer eine positive Zahl eingetragen hat. Wenn ja, geht das Programm zur primären Funktion.
Es fragt den Benutzer nun nach den Zahlen für die Zusammenrechnung, dabei benutzt es eine FOR-Schleife die durchgeht, bis die gewünschte Menge an Zahlen für die Zusammenrechnung erreicht wurde.
Dann wird der Benutzer nach der gewünschten Rechenart gefragt, mit einer Standart Shellrechnung rechnet er dann das Ergebnis aus.

[^1]: Wird in einem neuen Update kommen, stand 31.03.2023 ist diese Funktion jedoch noch nicht vorhanden.
