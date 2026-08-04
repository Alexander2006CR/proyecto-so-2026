#!/bin/bash

LOG="$HOME/scripts/monitor.log"

CPU=$(top -bn1 | awk -F',' '/Cpu/ {print int($1)}' | tr -dc '0-9')
RAM=$(free | awk '/Mem:/ {print int($3/$2 * 100)}')
DISCO=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

FECHA=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$CPU" -gt 80 ]; then
	PROCESO=$(ps -eo pid,comm,%cpu --sort=-%cpu | sed -n '2p')
	echo "[$FECHA] ALERTA: CPU excedido" >> "$LOG"
	echo "Uso actual: ${CPU}%" >> "$LOG"
	echo "Proceso: $PROCESO" >> "$LOG"
	echo "" >> "$LOG"
fi

if [ "$RAM" -gt 80 ]; then 
        echo "[$FECHA] ALERTA: RAM excedida" >> "$LOG"
        echo "Uso actual: ${RAM}%" >> "$LOG"
        echo "" >> "$LOG"
fi

if [ "$DISCO" -gt 90 ]; then 
        echo "[$FECHA] ALERTA: Disco excedido" >> "$LOG"
        echo "Uso actual: ${DISCO}%" >> "$LOG"
        echo "" >> "$LOG"
fi

echo "Monitoreo finalizado."
