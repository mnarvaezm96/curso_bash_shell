# ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Teo :v
#
echo "escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1 

#Adicion multilinea
cat <<EOM >> $1
$2
EOM
cat $1
