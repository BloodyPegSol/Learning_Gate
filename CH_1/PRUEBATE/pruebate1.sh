#!/bin/bash

for archivo in $*    					#La variable $* se expande a cada argumento separad por el primer caracter de IFS
do
	if [[ -f $archivo ]]   				#verifica si el argumento en el directorio existe y es un archivo
	then						#Usando el comando "stat" se obtiene el tamaño del archivo
		tamanio=$( stat -c %s $archivo )		
		echo "El archivo $archivo tiene un tamaño de: $tamanio bytes"
	else
		echo "No se encuentra el archivo $archivo"
	fi
done
