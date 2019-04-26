#!/usr/bin/bash
#Autor: jorge
#fecha: 26 aprile 2019
#descripcion: variables localey globales
#contacto atientas

variable="variable global"

function bash
{
	local variable="variable local"			
	echo "hola $variable"
}
 
bash
echo $variable
 

#echo "cual es tu sistema"
#read sistema
#echo "tu sistema es $sistema"

