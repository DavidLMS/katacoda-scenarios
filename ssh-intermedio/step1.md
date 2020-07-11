Recuerda que la **primera vez** (y solo la primera) que nos conectamos a un servidor, nos aparece un mensaje similar al siguiente:

<pre>TThe authenticity of host '192.168.1.55 (192.168.1.55)' can't be established.
ECDSA key fingerprint is SHA256:OzAKldDeIh8/OW3ZnKGzM7NnQl/vvKdqOOV+9NUng9A.
Are you sure you want to continue connecting (yes/no)?</pre>

Este mensaje sirve para que el cliente pueda comprobar que se está conectando al servidor deseado (y no es un servidor falso ataque "Man in the middle"). El usuario debería validar que el "fingerprint" o huella digital (OzAKldDeIh8/OW3ZnKGzM7NnQl/vvKdqOOV+9NUng9A en el ejemplo) es correcto. Con el comando ssh-keygen podemos obtener el "fingerprint" asociado al algoritmo de encriptación que se está usando para la conexión, en este caso ECDSA. Para ejecutar estas instrucciones deberemos utilizar el usuario "root" o un usuario con privilegios. En este último caso será preciso añadir sudo antes de la ejecución de la instrucción.

`cd /etc/ssh` {{execute HOST1}} # Accedemos a la carpeta donde se almacenan todas las claves públicas y privadas generadas con la instalación del servicio ssh
`ls` {{execute HOST1}} # listado de todos los ficheros y carpetas del directorio actual (/etc/ssh). 
`ssh-keygen -l -f ssh_host_ecdsa_key` # listar el fingerprint asociado al algoritmo ecdsa. 

Si escribimos **yes** agregará la clave del servidor a una lista segura en el cliente, de forma que este ya reconoce al servidor (IP y clave). Si en algún momento el host que tiene esa IP cambia, detectará que no es el mismo equipo y aparecerá un mensaje denegándote la conexión por seguridad.

Prueba a escribir yes y se conectará al servidor:

`yes`{{execute HOST1}}