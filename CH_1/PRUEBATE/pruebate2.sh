#!/bin/bash

while read -p 'Introduce archivo ("Q" para salir): ' archivo 		#Se obtiene un argumento de manera interactiva e itera infinitamente.
do	
	if [[ $archivo != "q" && $archivo != "Q" ]]                     #Se verifica que el usuario no quiera acabar con el proceso
	then		
		if [[ -f $archivo ]]					#Se verifica que el argumento sea un nombre de un archivo en el directorio actual
		then 
			back_up=${archivo}.bak				#Se crea el backup del archivo
			cp $archivo $back_up
			echo -e "Se ha copiado el archivo $archivo a $back_up\n"
		else
			echo -e "El achivo $archivo no existe\n"
		fi
	else
		break
	fi
done
