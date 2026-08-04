# Revisión de Logs del Sistema

## Objetivo

Verificar mediante los registros (logs) del sistema que los servicios configurados (MySQL y Cron) están funcionando correctamente y ejecutando las tareas programadas.

## Log del servicio Cron

Se revisó el archivo `/var/log/syslog`, donde el sistema registra la actividad del demonio de Cron, para confirmar que el servicio está activo y procesando las tareas programadas.

Funciones principales de esta verificación:

- Confirmar que el servicio de Cron inició correctamente al arrancar el sistema.
- Verificar que las tareas programadas (como el respaldo de la base de datos) se ejecutan en el horario definido.
- Detectar posibles errores en la ejecución de los scripts programados.

## Log del servicio MySQL

De forma similar, se revisó el estado del servicio de MySQL a través de `systemctl status mysql`, el cual muestra información proveniente del log interno del servicio, confirmando que el servidor está operativo y sin errores.

Funciones principales de esta verificación:

- Confirmar que el servicio de MySQL se mantiene activo.
- Detectar caídas o reinicios inesperados del servicio.
- Servir como respaldo para diagnosticar problemas de conexión a la base de datos.

## Importancia de la revisión de logs

Revisar los logs del sistema permite detectar fallos de forma temprana y confirmar que los procesos automatizados (como el backup programado con Cron) realmente se están ejecutando como se espera, sin depender únicamente de pruebas manuales.

