# ! /bin/bash
# Programa para ejemplificar como se lee un archivo
# Autor: Teo :v
#
echo "leer en un archivo"
cat $1
echo -e "\nAlmancenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable espacio IFS (Internal File Separator) para evitar que los espacios en blanco se recorten
#
echo -e "\nLeer archivos linea por linea"
while IFS= read linea
do
    echo "$linea"
done < $1

