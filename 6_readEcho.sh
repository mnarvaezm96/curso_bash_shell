# !/bin/bash
# Porgrama para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y $REPL
# Autor : teo :v

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresar una ipcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"
