En la mayoría de sistemas **Linux y macOS**, el software cliente para iniciar una conexión ssh viene **instalado por defecto**. En sistemas Windows es probable que se incluya próximamente, de momento se puede [activar de forma opcional](https://docs.microsoft.com/es-es/windows-server/administration/openssh/openssh_install_firstuse) o utilizar un software externo como [Putty](https://www.putty.org/).

Para **iniciar una conexión** SSH desde un cliente primero tenemos que crear un usuario en el servidor. Acceder al servicio con el usuario "root" no es una buena práctica y en algunos sistemas como Debian el usuario "root" no dispone de autorización para acceder al servicio ssh. Con el comando 

`adduser remoto`{{execute HOST2}} # creamos un usuario de nombre remoto. Utilizaremos este usuario para la conexión con el servidor.

Con el comando 

`ssh remoto@IP_SERVIDOR`{{execute HOST1}} 

**Sustituyendo** IP_SERVIDOR por la **dirección IP** del servidor. Cuando intentemos la conexión, nos pedirá la **contraseña** del usuario remoto.

La **primera vez** (y solo la primera) que nos conectemos a un servidor, nos aparecerá un mensaje similar al siguiente:

<pre>TThe authenticity of host '192.168.1.55 (192.168.1.55)' can't be established.
ECDSA key fingerprint is SHA256:OzAKldDeIh8/OW3ZnKGzM7NnQl/vvKdqOOV+9NUng9A.
Are you sure you want to continue connecting (yes/no)?</pre>

Este mensaje sirve para que el usuario pueda comprovar que se està conectando al servidor deseado (prevención contra el ataque "Man in the middle"). El usuario debería validar que el "fingerprint" o huella digital (OzAKldDeIh8/OW3ZnKGzM7NnQl/vvKdqOOV+9NUng9A) es correcto. Con el comando ssh-keygen podemos obtener el "fingerprint" asociado al algoritmo de encriptación que se está usando para la conexión, en este caso ECDSA. Para ejecutar estas instrucciones deberemos utilizar el usuario "root" o un usuario con privilegios. En este último caso será preciso añadir sudo antes de la ejecución de la instrucción.

`cd /etc/ssh` {{execute HOST1}} # Accedemos a la carpeta donde se almacenan todas las claves públicas y privadas generadas con la instalación del servicio ssh
`ls` {{execute HOST1}} # listado de todos los ficheros y carpetas del directorio actual (/etc/ssh). 
`ssh-keygen -l -f ssh_host_ecdsa_key` # listar el fingerprint asociado al algoritmo ecdsa. 

Si escribimos **yes** agregará la clave del servidor a una lista segura en el cliente, de forma que este ya reconoce al servidor (IP y clave). Si en algún momento el host que tiene esa IP cambia, detectará que no es el mismo equipo y aparecerá un mensaje denegándote la conexión por seguridad.

Prueba a escribir yes y se conectará al servidor:

`yes`{{execute HOST1}}

**Aparentemente**, no verás nada distinto, pero **los comandos que ejecutes en el cliente** (Host 1 superior), **será como si los ejecutases en el servidor** (Host 2 inferior). Para comprobarlo, vamos a **crear un archivo de prueba** en el servidor desde el cliente:

`touch prueba`{{execute HOST1}}

Y ahora vamos a **verificar** que se ha creado en el servidor:

`ls /home/remoto/`{{execute HOST2}} # Debería aparecer el archivo prueba

Si queremos **cerrar la conexión**, solamente tendremos que ejecutar en el cliente:

`exit`{{execute HOST1}}

Podemos ver que en el cliente no existe el archivo prueba:

`ls`{{execute HOST1}}

¡Ya puedes conectarte a otros ordenadores a través de la red! Usa tu poder con responsabilidad.
