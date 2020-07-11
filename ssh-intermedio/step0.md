En esta práctica partimos de los conocimientos adquiridos en la práctica [SSH básico](), pero en este caso aprenderemos a realizar la conexión de forma segura entendiendo y aplicando algunos ajustes.

**El servidor seguirá siendo el Host 2** (Terminal inferior) y **el cliente el Host 1** (Terminal superior). Accederemos, por tanto, al Host 2 desde el Host 1.

La IP del cliente (Host 1) es [[HOST_IP]] y la del servidor (Host 2) es [[HOST2_IP]].

Para comenzar, vamos a **instalar** el servicio SSH en el servidor:

`sudo apt-get install ssh`{{execute HOST2}}

Y, a continuación, **comprobamos** que el servicio se está ejecutando correctamente:

`sudo service ssh status`{{execute HOST2}}

Ya tenemos el entorno preparado para comenzar la práctica.