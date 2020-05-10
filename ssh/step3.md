En la mayoría de sistemas **Linux y macOS**, el software cliente para iniciar una conexión ssh viene **instalado por defecto**. En sistemas Windows es probable que se incluya próximamente, de momento se puede [activar de forma opcional](https://docs.microsoft.com/es-es/windows-server/administration/openssh/openssh_install_firstuse) o utilizar un software externo como [Putty](https://www.putty.org/).

Para iniciar una conexión SSH desde un cliente, escribimos el comando

<pre>ssh USUARIO_SERVIDOR@IP_SERVIDOR</pre>

Sustituyendo USUARIO_SERVIDOR por el nombre de usuario del servidor al que deseamos conectarnos e IP_SERVIDOR por la dirección IP del servidor. Cuando intentemos la conexión, nos pedirá la contraseña de ese usuario.

En este caso, el nombre de usuario del servidor es root y no tiene contraseña, por lo que no nos la pedirá.

Vamos a probar:

`ssh root@[[HOST2_IP]]`{{execute HOST1}}