#!/usr/bin/bash
#Autor: jorge
#fecha: 26 aprile 2019
#descripcion: ingresar cadenas de texto
#contacto atientas


echo -e "ingresar una palabra"
read palabra
echo -e "la palabra ingresada $palabra"
echo

echo -e "ingresa 2 palabras"
read palabra1 palabra2
echo -e "las palabras $palabra1 $palabra2"
echo

echo -e "escribe varias palabras"
read -e		   #variable default REPLY
echo -e $REPLY     #se imprimi REPLY
echo

echo -e "Menciona 3 herramientas"
read -a herramientas	#se crea Array
echo "tus herramientas de pendtesting son: ${herramientas[0]}, ${herramientas[1]} y ${herramientas[2]}"






