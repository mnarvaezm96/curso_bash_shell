# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for loop anidados
# Autor: Teo :v
#
echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "directorio creado correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivos creado correctamente"
    ls -la $2
else
    echo "no existe esa opcion: $1"
fi
