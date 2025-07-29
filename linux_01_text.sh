cat /etc/os-release

#Mostrar
cat file       #todo
cat -n file    #lineas numeradas
cat file fileB
cat file | less
cat file | more
cat file | wc –l    # conta line giga file
cat *csv > combined.csv


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
grep -n "key" file         #search key in file
grep -A 3 "key" file        #get text to interval  range
sed -n '/09:38:46/,/09:38:47/p' file
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
find . -name “*myFile*”  # file name or would like to match a part of the name
find . -type d      #list only directories
find . -type f -newermt 2020-01-01 ! -newermt 2020-12-31  -name "*.pdf"  #How to use 'find' to search for files created on a specific date? 
find . -type f -newermt 2020-01-01 ! -newermt 2020-06-31  -name "*.pdf" | wc -l # contar los file encontrados
find . -type f -newermt 2020-01-01 ! -newermt 2020-07-31  -name "*.pdf" -delete  # Remove all files created before a certain date
uniq    #no repetidas


echo $USER
echo $PATH
echo "texto \n $USER"

echo 'testo' > file.txt     #crea write text to file
echo 'testo' >> file.txt    #append  text to file

sort -nr    #ordenar
sort -r     #odernar de modo inverso
sort nome_file.csv  | sort | uniq -d  #Script to find duplicates in a csv file
unique      #muestra los unicos
open




#SISTEMA FICHEROS
cd ~        #regresar  /
cd -        #regresa a directorio anterior
ls -a		#mostrar archivos ocultos    
ls -lr      #nombre descendente
ls -lhSr    #tamano descendente  ls -lhS
ls -ltr     #fecha descendente   ls -lt
ls -l *     #comodin * busca cualquier cantidad
ls -l *a*
ls -l name*.txt
ls -l name??.txt #comodin ? busca depende cantidad 
ls | wc -l  #contar archivos
ls -ltr --block-size=M

tree dir/   #mostrar dir forma arbol
tree -CL 2 dir/   #Descend only level directories deep.  color
tree /F    # windows

pwd         #mostrar ruta
clear       #limpiar
history     #lista de comando usados

mkdir  dirname              # crear carpeta
mkdir -p dir/subdir         # crear subcarpetas
touch file.txt              # crearFile
echo hola mundo >> file.txt # agregar testo
ln -s nome_file nome_enlace # crear enlace simbolico
rm nome_enlace              # remover enlace simbolico

cp -r dir otroDir       #copiar carpeta modo recursivo
cp -p file fileB
cp file newfile     #copia file con nuevo nombre
cp file /dir        #copia file a dir
cp * /dir           #copy all file
mv file /dir        #mover file a dir  
mv file newfile     #renombrar carpeta archivo
mv -i fileA fileB
rm -rf dir/   #eliminar directorio
rm -f *.log     #eliminar varios file mismo type


#https://www.tecmint.com/18-tar-command-examples-in-linux/
tar -cfz nome_file.tgz nome_file.log    #compress
tar -cvf file.tar /dir    #descompres tar Archive File
tar –xvzf  archive.tgz		#decomprimere
tar -xvzf archive.tar.gx -C archive_dir 	#decomprimere to dir
tar -tvf filename.tar   #view content

bzip2 -d       test.txt.bz2
zip ./nome_file.zip nome_file.log  #compress file
zip -r dump.zip dump/   #compress folder
unzip file.zip          #decompress
zcat nome_file.zip

wget  http:ruta.zip   #scarica risorse


date --set="2 OCT 2006 18:00:00"




nano /private/etc/hosts #path Hosts
nano ~/.bash_profile  #variables de entorno


iconv -f "windows-1252" -t "UTF-8" import.csv -o new_import.csv    #cambiar encoding



