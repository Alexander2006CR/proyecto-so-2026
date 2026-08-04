# Conclusiones

El desarrollo de este proyecto permitió aplicar de forma práctica los conocimientos adquiridos en administración de sistemas Linux, cubriendo desde la instalación y configuración base del servidor hasta la implementación de servicios web, bases de datos y tareas automatizadas.

En la parte de infraestructura web, se configuró el servidor Apache con Virtual Hosts, permitiendo alojar múltiples dominios locales (empresa.local y curso.local) de forma independiente dentro del mismo servidor, simulando un entorno de hosting real.

En la parte de gestión de datos, se instaló y configuró el servidor MySQL, creando la base de datos empresalocal con tablas relacionadas mediante llaves foráneas (clientes, servicios y ventas), lo que permitió comprender la importancia de mantener la integridad referencial en un sistema de información.

En cuanto a la automatización, se desarrollaron scripts en Bash para el respaldo (backup.sh) y el monitoreo (monitor.sh) del sistema, los cuales se programaron mediante Cron para ejecutarse de forma periódica sin intervención manual. Esto demostró cómo la automatización reduce el margen de error humano y garantiza la continuidad de las tareas de mantenimiento del servidor.

Finalmente, la revisión de los logs del sistema permitió verificar que tanto los servicios (MySQL, Cron) como las tareas programadas se ejecutaran correctamente, sirviendo como una herramienta clave para el diagnóstico y la detección temprana de errores.

En conjunto, este proyecto permitió fortalecer competencias en administración de servidores, configuración de servicios web, gestión de bases de datos y automatización de procesos, habilidades fundamentales para el manejo de infraestructuras tecnológicas en entornos reales de trabajo en equipo.
