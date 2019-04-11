#Mostrar
cat file       #todo
cat -n file    #lineas numeradas
cat file fileB
cat file | less
cat file | more
cat file | wc –l    # conta line giga file

more file           #inizio  "h"  mas opciones
less file           #inizio ficheros grandes "h"  mas opciones
head file           #primeras 10 lineas
head -n5 *.log      #primera 5 lineas de *.log
head -n5 -q *.log   #primera 5 lineas de *.log sin nombre fichero
head -10 file.csv_ > newfile_10.csv     #crea file con 10 line

tail                #ultimas 10 lineas
tail -n5 *.log      #ultimas 5 lineas de *.log
tail -f             #
multitail -c file   #tail con colores

#Filtrar Texto
cut -c1-10 error.log    #muestra el primer caracter con intervalos
cut -c1,8,10-20         #corta caracteres con rangos 
cut -d":"               #mostra con delimitador 

#https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/
grep -r key                  #show file che contiene la key
grep -rl key             #show file que contiene key
grep -rn key file        #show numberline e row 
grep -rE 'key|key' file      #show rows con multiple key
grep -E 'key|key' file  > newfile     #crea file con rows da multiple key
grep -o 'palabra' file | wc -l #count palabra en el file
grep ^letra         #buscar con letra
grep -i key         #palabra sin considerar mayusculas
grep palabra.*palabra    #buscar palabras
grep -lv '#'         #no contiene l
grep -w palabra      #palabra independiente  
grep -r              #modo recursivo

wc -l *.txt     #contar lineas de varios ficheros


find . -name file.txt
find . -name “myFile*”  # file name or would like to match a part of the name
find . -type d      #list only directories
uniq    #no repetidas


echo $USER
echo $PATH
echo "texto \n $USER"

echo 'testo' > file.txt     #crea write text to file
echo 'testo' >> file.txt    #append  text to file

sort -nr    #ordenar
sort -r     #odernar de modo inverso
unique      #muestra los unicos
open