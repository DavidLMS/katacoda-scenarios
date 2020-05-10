Para un administrador de sistemas, el acceso remoto es fundamental, ya que permite:

* Administrar y resolver problemas en un servidor o equipo sin necesidad de estar físicamente presente.
* Asesorar y ofrecer apoyo técnico, así como soluciones de problemas informáticos a usuarios, sin realizar ningún desplazamiento.

SSH (Secure Shell) es un protocolo de acceso remoto por línea de comandos seguro, en el que la comunicación se encuentra cifrada. Por defecto, la conexión se realiza a través del puerto 22 TCP.

El esquema de funcionamiento de este protocolo es muy sencillo:

En el servidor instalaremos el servicio SSH que permita el control remoto. En el cliente, que servirá para controlar el servidor, instalaremos el software cliente que permitirá acceder al servidor. Esta conexión puede realizarse en una red local o a través de la red pública. Es evidente que, especialmente si lo utilizamos a través de la red pública, tengamos muy presente la seguridad. Precisamente SSH tiene la ventaja de cifrar la comunicación, a diferencia de otros protocolos de acceso remoto como Telnet.

En esta práctica, el servidor será el Host 2 (Terminal inferior) y el cliente el Host 1 (Terminal superior). Accederemos, por tanto, al Host 2 desde el Host 1.

Primero debemos tener claro las direcciones IP de ambos hosts. Para ello, ejecutamos el comando "ip add".

Haz click en el siguiente comando para ejecutarlo en el Host 1 (cliente):

`ip add`{{execute HOST1}}

Haz click en el siguiente comando para ejecutarlo en el Host 2 (servidor):

`ip add`{{execute HOST2}}

La IP es la que aparece a continuación de "inet" en la tarjeta de red "ens3" de cada uno de los hosts.

En tu caso, la IP del cliente (Host 1) es [[HOST1_IP]] y la IP del servidor (Host 2) es [[HOST2_IP]]