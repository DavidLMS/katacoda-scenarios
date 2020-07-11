Para **iniciar una conexión** SSH desde un cliente primero tenemos que crear un usuario en el servidor. Acceder al servicio con el usuario "root" no es una buena práctica y en algunos sistemas como Debian el usuario "root" no dispone de autorización para acceder al servicio ssh. Con el comando 

`adduser remoto`{{execute HOST2}} # creamos un usuario de nombre remoto. Utilizaremos este usuario para la conexión con el servidor.

Con el comando 

`ssh remoto@IP_SERVIDOR`{{execute HOST1}} 

**Sustituyendo** IP_SERVIDOR por la **dirección IP** del servidor. Cuando intentemos la conexión, nos pedirá la **contraseña** del usuario remoto.

Denegar el acceso a root:
Modificar la variable de PermitRootLogin yes a PermitRootLogin no en el archivo de configuración de SSH. Este está ubicado normalmente en /etc/ssh/sshd_config