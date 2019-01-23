#Mostrar
cat file       #todo
cat -n      #lineas numeradas
cat file fileB
cat file | less
cat file | more
cat file | wc –l    # conta line giga file

more file           #inizio  "h"  mas opciones
less file           #inizio ficheros grandes "h"  mas opciones
head file           #primeras 10 lineas
head -n1            #primera linea
head -n5 *.log      #primera 5 lineas de *.log
head -n5 -q *.log   #primera 5 lineas de *.log sin nombre fichero
tail                #ultimas 10 lineas
tail -n5 *.log      #ultimas 5 lineas de *.log

#Filtrar Texto
cut -c1-10 error.log    #muestra el primer caracter con intervalos
cut -c1,8,10-20         #corta caracteres con rangos 
cut -d":"               #mostra con delimitador 

#buscar palabra
grep -lr palabra *  #mostra fichero que contiene la palabra
grep -rn palabra    #mostra lineas y fichero
grep -o 'palabra' file.log | wc -l #count palabra en el file
grep ^letra         #buscar con letra
grep palabra -iR    #palabra sin considerar mayusculas
grep palabra.*palabra    #buscar palabras
grep -v '#'         #no contiene #
grep -l             #nombre del fichero
grep -w palabra     #palabra independiente  
grep -n             #numero de lineas
grep -c             #cuenta cantidad de lineas
grep -r             #modo recursivo

uniq    #no repetidas


wc -l *.txt     #contar lineas de varios ficheros
wc -l *.log        #contar  
cat *.log | wc -l       #total file

echo $USER
echo $PATH
echo "texto \n $USER"

echo 'testo' > file.txt
echo 'testo' >> file.txt

sort -nr    #ordenar
sort -r     #odernar de modo inverso
unique      #muestra los unicos
open