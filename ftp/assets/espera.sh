#!/bin/bash

show_progress()
{
  echo -n "Espera a que se complete la configuración inicial antes de ejecutar algún comando"
  echo -n "Instalando servidor web"
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  while true; do 
    sudo grep -i "hecho" /root/nginx-terminado &> /dev/null
    if [[ "$?" -ne 0 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Servidor web instalado"
  echo -n "Instalando cliente de ftp web"
  while true; do 
    sudo grep -i "done" /root/monsta-ftp-terminado &> /dev/null
    if [[ "$?" -ne 0 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Cliente ftp web instalado"
}

show_progress