# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: Teo :v
#
echo "Empaquetar todos los scripts de la carpta en una archivo comprimido"
tar -cvf shellCourse.tar *.sh
# Cuando se empaquete con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "empaquetar un solo archivo, con ratio 9"
gzip -9 9_options.sh

