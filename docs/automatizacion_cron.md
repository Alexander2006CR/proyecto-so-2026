# Documentación de Automatización con Cron

## Script de respaldo

Para automatizar el respaldo de la base de datos se creó un script llamado `backup.sh`, que se encarga de generar una copia de la base de datos `empresalocal` comprimida en formato `.gz`, guardándola en una carpeta llamada `backups` con la fecha y hora en el nombre del archivo, para poder identificar cada respaldo fácilmente. Al ejecutarlo manualmente por primera vez, el script generó correctamente el archivo comprimido, confirmando que funciona.

## Configuración de la tarea programada

Luego se configuró una tarea programada usando `crontab`, para que este respaldo se ejecute automáticamente cada 12 horas sin necesidad de correrlo a mano. Se verificó con `crontab -l` que la tarea quedó guardada correctamente.

## Verificación del servicio

Con `systemctl status cron` se confirmó que el servicio encargado de ejecutar estas tareas programadas está activo y corriendo en el sistema. También se revisó el registro del sistema (`/var/log/syslog`) para confirmar que el servicio de Cron está funcionando y procesando tareas correctamente.
