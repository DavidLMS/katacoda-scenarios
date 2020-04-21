This is your first step.

## Task

This is an _example_ of creating a scenario and running a **command**

`docker volume create portainer_data`{{execute}}

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer`{{execute}}

Accede en el puerto 9000: https://[[HOST_SUBDOMAIN]]-9000-[[KATACODA_HOST]].environments.katacoda.com/
