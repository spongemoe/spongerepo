# Fitness & Nährwerte Tracker (iOS SwiftUI)

Dieses Repository enthält eine einfache iOS-App als SwiftUI-Beispiel in `ios/FitnessTrackerApp`.

## Features
- Trainingsplan erstellen und Übungen auswählen.
- Workouts loggen und verbrannte Kalorien berechnen.
- Mahlzeiten inkl. Makronährwerte (Protein, Kohlenhydrate, Fett) erfassen.
- Tagesübersicht: aufgenommene Kalorien, verbrannte Kalorien und Netto-Kalorien.
- Anzeige, ob aktuell ein Kaloriendefizit vorliegt.

## Projektstruktur
- `FitnessTrackerApp.swift`: App-Einstiegspunkt.
- `Models/`: Datenmodelle für Übungen, Workouts, Trainingsplan und Mahlzeiten.
- `ViewModels/TrackerStore.swift`: State-Management und Berechnungslogik.
- `Views/`: Tabs für Übersicht, Training und Ernährung.

## Verwendung
1. Öffne den Ordner `ios/FitnessTrackerApp` in Xcode und lege ein neues iOS App-Projekt an.
2. Ersetze die generierten Swift-Dateien mit den Dateien aus diesem Ordner.
3. Starte die App auf Simulator oder Gerät.

> Hinweis: In dieser Umgebung steht kein Xcode/iOS-Simulator zur Verfügung, daher wurde der Build lokal nicht ausgeführt.
