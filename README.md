# Webbasierte 3D-Laderaumplanungssoftware

Eine einfache, browserbasierte Anwendung zur Planung von LKW-Beladungen mit 3D-Visualisierung.

## Funktionen

- **3D-Ansicht des Laderaums** mit frei drehbarer Kamera.
- **Vordefinierte gängige LKW-Typen** (u. a. Standard-Sattelzug, Mega-Trailer, Motorwagen).
- **Beladungsprüfung** mit:
  - Nutzlastgrenze (Gewichtsgrenze),
  - räumlicher Kollisionsprüfung,
  - Stapelregeln (max. Stapelhöhe / nicht stapelbar).
- **Automatische Platzierung** von Ladeeinheiten im verfügbaren Laderaum.
- **Live-Kennzahlen** zu Gewicht, Volumenauslastung und nicht platzierbaren Einheiten.

## Starten

### Option 1 (direkt)
`index.html` im Browser öffnen.

### Option 2 (lokaler Server)
```bash
cd /workspace/spongerepo
python3 -m http.server 8000
```
Dann aufrufen: `http://localhost:8000/`

## Bedienung

1. LKW-Typ auswählen.
2. Ladeeinheit mit Maßen, Gewicht und Stapelregeln anlegen.
3. „Ladegut hinzufügen“ klicken.
4. In der 3D-Ansicht Beladung prüfen und Kennzahlen überwachen.

Für einen Schnelltest kann über **„Mit Euro-Paletten füllen“** ein typischer Startdatensatz erzeugt werden.
