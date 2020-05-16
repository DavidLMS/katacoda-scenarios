**FTP** es un protocolo de servicio de transferencia de ficheros que permite **intercambiar archivos** entre uno o varios clientes y un servidor. En resumen, un cliente puede **solicitar** al servidor **subir un archivo** a una carpeta del mismo o **descargar alguno** que se encuentre previamente disponible en el dispositivo.

El protocolo FTP trabaja en la capa de Aplicación, usando **TCP** para el transporte. Concretamente, **utiliza dos puertos TCP, uno para la conexión de control y otro para la conexión de datos**. Funciona **independientemente del sistema operativo** utilizado en el cliente y el servidor.

El esquema de funcionamiento de este protocolo es muy sencillo:

<center>![Esquema de acceso remoto](https://raw.githubusercontent.com/DavidLMS/katacoda-scenarios/master/ftp/assets/esquemaserviciotransferencia.png)</center>

En el servidor instalaremos **el servicio FTP** que permita el control remoto. En el cliente, que servirá para controlar el servidor, instalaremos el **software cliente** que permitirá acceder al servidor.

En esta práctica, **el servidor será el que encontramos en la pestaña Terminal** y **el cliente el que accedemos en la pestaña Cliente consola**. Además, tenemos una pestaña Cliente web para acceder al servidor usando una interfaz gráfica. También contamos en la parte superior derecha con un editor de archivos para visualizar y cambiar la configuración del servidor.

Primero debemos tener claro las **direcciones IP** del servidor y del cliente. Para ello, ejecutamos el comando **ip add**.

Haz click en el siguiente comando para ejecutarlo en el cliente:

`ip add`{{execute HOST2}}

Haz click en el siguiente comando para ejecutarlo en el servidor:

`ip add`{{execute HOST1}}

La IP es la que aparece a continuación de **inet** en la tarjeta de red **ens3** de cada uno de los hosts.

También debemos comprobar que un host **tiene conectividad** con el otro (porque sino, no podremos hacer una conexión FTP).

Prueba a hacer **ping** desde el cliente al servidor usando el siguiente comando:

`ping -c 4 [[HOST_IP]]`{{execute HOST2}}

Aunque no es necesario, también podrías hacer **ping** desde el servidor al cliente usando el siguiente comando:

`ping -c 4 [[HOST2_IP]]`{{execute HOST1}}

Ya lo tenemos todo listo para comprender y realizar esta práctica. Continúa para preparar el servidor.