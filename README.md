
# Raspberry Pi - CPU Temperatur Tool

Raspberry Pi Tool zum Aufzeichnen der CPU Temperatur

## Demo

"Bild in Bearbeitung"

## Installation

Öffnen die Konsole eures Raspberry Pi's, und gebt folgenden Befehl ein.

```bash
git clone https://github.com/digitalewelt/RPi-CPU-Temp-Tool.git
```
Im Datei Explorer seht ihr im Benutzerverzeichnis (/home/pi) den Ordner RPi-CPU-Temp-Tool.
In diesem Ordner befinden sich die Datei cpu-temp.sh.

Verschiebt die Datei aus diesem Ordner heraus in das Hauptverzeichnis (/home/pi).

Anschließend müsst ihr folgenden Befehl in eurer Konsole eingeben, und die Datei ausführbar zu machen.

```bash
sudo chmod +x cpu-temp.sh
```
Die Installation ist damit abgeschlossen.

## Anleitung

Öffnet eure Konsole oder verbindet euch per SSH mit eurem Raspberry Pi.
Gebt nur folgenden Befehl ein, um das Tool zu starten.

```bash
./cpu-temp.sh
```
Als erstes werdet ihr gefragt, wie viel Sekunden zwischen den Messungen vergehen sollen.
Gebt den Wert in Sekunden ein, und bestätigt die Eingabe mit Enter

Anschließend werdet ihr gefragt, wie viele Messungen gemacht werden sollen.
Gebt auch hier einen Wert ein, und bestätigt die Eingabe mit Enter.

Die Messunge wird gestartet.

### Beispiel

Sekunden: 10
Anzahl: 25

Dauer der Messunge: 10 * 25 = 250 Sekunden --> 4min und 10 Sekunden.

ACHTUNG: Die Konsole darf während des Messvorganges nicht geschlossen werden.

## Auswertung

Nach Abschluss der Messung findet ihr in eurem Benutzerverzeichnis eine .csv Date mit Datum, Uhrzeit und CPU-Temperatur als Dateinamen.

z.B.: 2022_10_06-09-53-15_CPU-Temperatur.csv



