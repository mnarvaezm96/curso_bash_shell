# !/bin/bash
# Porgrama para revisar como ejecutar comandos dentro de un programa y almancenar en una variable para su posterior utilizacion los tipos de operadores
# Autor : teo :v
# Se realiza de 2 maneras: 
# 1. Se realiza con backtick caracter (``)
# 2. Usando el sigo de dolar con el formato $(comando)
ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicacion actual es el siguiente: $ubicacionActual"
echo "Informacion del kernel: $infoKernel"

