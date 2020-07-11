nano /etc/ssh/sshd_config

Debemos buscar la línea que ponga “#Port 22” y cambiar el 22 por el puerto que nosotros queramos configurar, como por ejemplo el 3625 y además eliminamos el #

/etc/init.d/ssh restart
