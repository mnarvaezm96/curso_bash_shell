# !/bin/bash
# Programa para ejemplificar el uso de if anidados
# Autor: teo :v

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su país: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "Expresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else
    echo "La persona es amyor de edad"
fi
echo -e "Expresiones condicionales con cadenas"
if [ $pais =  "EEUU" ]; then
    echo "La persona es estadounidense"
elif [ $pais = "Colombia" ] || [ $pais = "brasil" ]; then
    echo "La persona es de suramerica"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "Expresiones condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El dorectorio $pathArchivo no existe"
fi
