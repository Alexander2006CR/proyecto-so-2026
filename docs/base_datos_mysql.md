# Documentación de MySQL

## Instalación del servidor

Para esta parte se instaló el servidor de MySQL en el servidor Ubuntu y se verificó que el servicio quedara corriendo correctamente usando `systemctl status mysql`, donde se puede ver que el estado es "active (running)" y que el servidor está operacional.

## Creación de la base de datos y tablas

Se creó la base de datos `empresalocal` y dentro de ella se armaron tres tablas: `clientes`, `servicios` y `ventas`. La tabla de ventas está relacionada con las otras dos mediante llaves foráneas, es decir, cada venta queda vinculada a un cliente específico y a un servicio específico, lo que garantiza que no se puedan registrar ventas con datos inconsistentes. Con `SHOW TABLES` se confirmó que las tres tablas quedaron creadas dentro de la base de datos.

## Inserción de datos de prueba

Se insertaron datos de prueba: dos clientes, dos servicios y dos ventas relacionando a esos clientes con esos servicios.

## Verificación

Finalmente, con consultas `SELECT` se verificó que toda la información quedó guardada correctamente y que las relaciones entre las tablas funcionan como se esperaba.
