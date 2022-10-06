#!/bin/bash

#----------------------------------
#Script: cpu-temp.sh
#CPU-Temperatur aufzeichnen.
#Author: Stefan von  digitalewelt.at
#-----------------------------------

#Werte nach Bedarf einstellen.

#Zeit wischen den Messungen in Sekunden
delay=1

#Anzahl der Messungen.
anzahl=1

#-----------------------------------

i=0


clear
echo -e "\nDas CPU TEMPERATUR TOOL von digitalewelt.at\n###########################################\n\nWie viel Zeit soll zwischen den Messungen vergehen?"
read -p "Sekunden: " delay

echo -e "\nWie viele Messungen sollen gemacht werden?"
read -p "Anzahl: " anzahl

echo -e "\n\nMessung läuft...\n\nMit Strg + C kann die Messung abgebrochen werden."

d=`date +%Y_%m_%d-%H-%M-%S`

echo CPU-Temp Messung vom `date +%d-%m-%Y` >> ${d}_CPU-Temperatur.csv
echo "Datum" ";" "Zeit" ";" "Grad" ";" "Einheit" >> ${d}_CPU-Temperatur.csv
sleep 1;
while [ $i -lt $anzahl ]; do
echo `date +%Y-%m-%d`";" ` date +%T`";" $((`cat /sys/class/thermal/thermal_zone0/temp` /1000))";" "Grad" >> ${d}_CPU-Temperatur.csv && i=$[$i+1];
sleep $delay;
done

echo -e "\n\nMessung abgeschlossen!\n\n"
