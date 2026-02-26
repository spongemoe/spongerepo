# Webbasierte 3D-Laderaumplanungssoftware

Eine einfache, browserbasierte Anwendung zur Planung von LKW-Beladungen mit integrierter 3D-Visualisierung (ohne Build-Tool, direkt in `index.html`).

## Funktionen

- **LKW-Auswahl im Dropdown** für mehrere gängige Fahrzeugtypen.
- **Ladegut-Erfassung** mit Maßen, Gewicht und Stapelregeln.
- **Automatische Beladungsprüfung** auf:
  - Gewichtsgrenzen (Nutzlast),
  - Kollisionsfreiheit,
  - Laderaumgrenzen,
  - Stapelbarkeit/Nicht-Stapelbarkeit.
- **Sofortige 3D-Darstellung** der platzierten Einheiten in einer isometrischen Ansicht.
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
4. Das Paket erscheint sofort in der Visualisierung (wenn platzierbar).
