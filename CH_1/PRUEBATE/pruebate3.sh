#!/bin/bash


while :												#Loop infinito que acabará cuando se ingrese un múltiplo de 7.
do
	read -p "Inserte un número: " num   							#Se pregunta de manera interactiva por un número.
	residuo=$(( num%7 ))									#Se obtiene el residuo del número al ser dividido por 7.
	if [[ $residuo -eq 0 ]]									#Se verifica que el residuo sea 0 (el número es múltiplo de 7)
	then
		echo -e "El número $num es múltiplo de 7\n¡Felicidades!\n"			#En caso de ser múltiplo de 7 se rompe el ciclo.
		break
	else
		echo -e "El número $num no es múltiplo de 7\nVuelva a intentarlo.\n"		#En caso de no serlo se vuelve a iterar.
	fi
done
