# Configuración de Virtual Hosts en Apache

## Creación de Virtual Hosts

Para permitir que los sitios web creados funcionaran de manera independiente, se configuraron Virtual Hosts en el servidor Apache.

Se crearon configuraciones individuales para los siguientes dominios locales:

* empresa.local
* curso.local

Para crear los archivos de configuración se utilizaron los siguientes comandos:

sudo nano /etc/apache2/sites-available/empresa.local.conf

sudo nano /etc/apache2/sites-available/curso.local.conf

Dentro de cada archivo se configuraron los parámetros necesarios como el dominio, la ruta del directorio del sitio web y el archivo principal de cada página.

## Habilitación de los Virtual Hosts

Después de crear las configuraciones, se habilitaron los sitios web mediante los siguientes comandos:

sudo a2ensite empresa.local.conf

sudo a2ensite curso.local.conf

Estos comandos permiten que Apache reconozca y active las configuraciones creadas para cada dominio.

## Deshabilitación del sitio predeterminado

Se deshabilitó la configuración predeterminada de Apache para evitar conflictos con los nuevos sitios configurados.

El comando utilizado fue:

sudo a2dissite 000-default.conf

## Reinicio del servicio Apache

Para aplicar los cambios realizados en la configuración del servidor se reinició el servicio Apache mediante:

sudo systemctl restart apache2

Después del reinicio se comprobó que los sitios configurados funcionaran correctamente.

## Configuración de dominios locales

Para que los dominios fueran reconocidos dentro del sistema, se realizó la configuración correspondiente de los nombres locales:

* empresa.local
* curso.local

Esto permitió acceder a cada sitio web utilizando su propio dominio dentro del entorno de pruebas.
