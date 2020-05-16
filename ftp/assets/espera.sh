#!/bin/bash
echo "Espera a que el sistema esté configurado completamente antes de ejecutar algún comando..."; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Listo"