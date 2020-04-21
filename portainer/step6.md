

Acceder a volumes en interfaz gráfica.

Acceder por comandos a nginx y descargar página web de ejemplo.

docker exec -it servidorweb bash
cd /usr/share/nginx/html
rm *
apt update
apt install wget
wget https://davidlms.github.io/
exit

Probar.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

Recrear contenedor y comprobar que ya no está. (Si paro y enciendo se mantienen LOSDATOS)

En containers recreate

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/ -> Puede tener que recargar navegador, o usar otro o modo incógnito.

Crear volumen por interfaz gráfica

Parar y borrar contenedor nginx.

Crear uno nuevo con volume.

Poner de nuevo web y reiniciar, comprobar que ya se mantiene.
