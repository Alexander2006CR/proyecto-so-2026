#!/bin/bash

BASE_DATOS="empresalocal"
USUARIO="root"
CARPETA_BACKUP="$HOME/backups"

if [ ! -d "$CARPETA_BACKUP" ]; then
	mkdir -p "$CARPETA_BACKUP"
fi

FECHA=$(date +"%Y-%m-%d_%H-%M")

sudo mysqldump $BASE_DATOS | gzip > "$CARPETA_BACKUP/backup_db_$FECHA.sql.gz"

echo "Respaldo realizado correctamente"
