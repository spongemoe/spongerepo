# Webbasierte 3D-Laderaumplanungssoftware

Eine einfache, browserbasierte Anwendung zur Planung von LKW-Beladungen mit integrierter 3D-Vorschau direkt in `index.html`.

## Funktionen

- **LKW-Auswahl im Dropdown** für mehrere gängige Fahrzeugtypen.
- **Ladegut-Erfassung** mit Maßen, Gewicht und Stapelregeln.
- **Automatische Beladungsprüfung** auf:
  - Gewichtsgrenzen (Nutzlast),
  - Kollisionsfreiheit,
  - Laderaumgrenzen,
  - Stapelbarkeit/Nicht-Stapelbarkeit.
- **Geschlossene Pakete in der Vorschau** (vollflächig gezeichnete Boxen).
- **Per Maus-Drag frei drehbare 3D-Ansicht**, damit die Beladung von allen Seiten geprüft werden kann.
- **Rückgängig-Button** für die letzten Planungsschritte.
- **Live-Kennzahlen** zu Gewicht, Volumenauslastung und nicht platzierbaren Einheiten.

## Starten

```bash
cd /workspace/spongerepo
python3 -m http.server 8000
```
Dann öffnen: `http://localhost:8000/`

## Bedienung

1. LKW im Dropdown auswählen.
2. Maße/Gewicht/Stapelregel eingeben.
3. Auf **„Ladegut hinzufügen“** klicken.
4. Mit gedrückter linker Maustaste in der Vorschau ziehen, um die Beladung zu drehen.
5. Bei Bedarf über **„Rückgängig“** den letzten Schritt zurücknehmen.
