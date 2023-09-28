# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Teo :v
#
echo "Empaquetar todos los scripts de la carpta en una archivo comprimido"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

# Cuando se empaquete con gzip el empaquetamiento anterior se elimina
echo "Empaquetar un direcotrio con tar y pbzip2"
tar -cf *.sh > shellCourse.tar.bz2

