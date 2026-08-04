# Implementación del servidor web Apache

## Instalación de Apache

Para implementar el servidor web del proyecto se realizó la instalación de Apache en Ubuntu mediante la terminal.
Los comandos utilizados para instalar el servicio fueron:

sudo apt update
sudo apt install apache2

Después de completar la instalación, se verificó que el servicio Apache quedara funcionando correctamente dentro del sistema.

## Creación de sitios web independientes

Se crearon dos sitios web independientes dentro del servidor Apache:

* empresa.local
* curso.local

Para crear las carpetas donde se almacenarían los archivos de cada sitio web se utilizaron los siguientes comandos:

sudo mkdir -p /var/www/empresa.local
sudo mkdir -p /var/www/curso.local

Posteriormente se asignaron los permisos correspondientes para que el usuario pudiera administrar los archivos de los sitios:

sudo chown -R $USER:$USER /var/www/empresa.local
sudo chown -R $USER:$USER /var/www/curso.local

Luego de aplicar los permisos, se verificó que los directorios pertenecieran correctamente al usuario del sistema.

## Creación de archivos HTML y CSS

Dentro de cada sitio web se crearon los archivos necesarios para definir la estructura y apariencia de las páginas.
Para crear los archivos se utilizó el editor Nano mediante los comandos:

nano index.html
nano style.css

El archivo index.html contiene la estructura principal de cada página web, mientras que el archivo style.css permite agregar los estilos visuales correspondientes.

## Configuración inicial de los sitios

Después de crear los archivos correspondientes, cada sitio web quedó preparado para realizar la configuración de Virtual Hosts en Apache, permitiendo que cada dominio local funcionara de manera independiente.

## Resultado

La instalación de Apache y la creación de los sitios web se realizaron correctamente, dejando el servidor preparado para alojar múltiples páginas utilizando configuraciones independientes.
