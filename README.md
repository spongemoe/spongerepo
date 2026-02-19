# Lichter Aus (Mac-kompatibles Mini-Spiel)

Ein sehr einfaches Logikspiel, das auf macOS ohne zusätzliche Installation funktioniert:

- Datei `index.html` im Browser öffnen (Safari, Chrome, Firefox).
- Klicke auf ein Feld, um es und die direkten Nachbarn umzuschalten.
- Ziel: **Alle Lichter ausschalten**.

## Starten

### Option 1 (am einfachsten)
- `index.html` per Doppelklick öffnen.

### Option 2 (lokaler Webserver)
Im Projektordner ausführen:

```bash
cd /workspace/spongerepo
python3 -m http.server 8000
```

Dann im Browser öffnen:
- `http://localhost:8000/`

## Wenn „Not Found“ angezeigt wird
Das passiert fast immer aus einem dieser Gründe:

1. Der Server wurde **im falschen Ordner** gestartet.
   - Lösung: Vorher in den Ordner wechseln, in dem `index.html` liegt (`cd /workspace/spongerepo`).

2. Es wurde eine **falsche URL** geöffnet.
   - Lösung: `http://localhost:8000/` oder direkt `http://localhost:8000/index.html` aufrufen.

3. Der Server läuft nicht (mehr).
   - Lösung: Terminal prüfen und den Server erneut starten.
