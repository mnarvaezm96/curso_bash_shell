# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for loop anidados
# Autor: Teo :v
#
echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivos: $fil _ $nombre"
    done
done
