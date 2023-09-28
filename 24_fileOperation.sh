# ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Teo :v
#
echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio"
cp *.* backupScripts/
ls -la backupScripts

echo -e "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME


echo -e "\nEliminar archivos .txt"
rm *.txt
