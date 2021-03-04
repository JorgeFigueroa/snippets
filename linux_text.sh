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

##https://www.guru99.com/the-vi-editor.html
vi file_name
esc   #modalita commando
i     #modalita inserimento
v     #modalita visuale

w     #sposta parola succesiva
b     #sposta parola precendente
gg    #sposta prima riga
G     #sposta ultima riga
:100  #sposta riga 100

x     #cancella caractere nel cursore
dw    #cancella una parola
d3w   #cancella 3 parole
dd    #cancella riga
3dd   #cancella 3 righe

y     #copia caractere
Y     #copia tutta la riga
yw    #copia parola
y3w   #copia 3 parole
Y$    #copia fino a fine riga
p     #incolla dopo il cursore
P     #incolla prima il cursore

/parola              #ricerca un parola
/par.                #ricerca parte di una parola
:s/testo/new_testo    #sostituice testo
:s/testo//            #sostituice testo con psazio vouto  

:w    #salva file
:q    #chiudi file
:wq   #salva e chiudi
:q!   #forza la chiusura

[ESC] = Tona alla modalità NORMALE (COMANDO)
: = (due punti) Digitare comandi
:q = esci da ViM
:q! = uscita forzata
i = Il carattere "i" permette di passare dalla modalità comando alla modalità INSERIMENTO
dd = CANCELLA / TAGLIA una riga
x = cancella un carattere
/ = ricerca testo nel file
n = continua la ricerca del testo eseguito con /
P = incolla il testo tagliato con "dd"
v = Permette di passare dalla modalità comando alla modalità VISUALE
:w = salva
:w nomefile = salva con nome



######################################### LINUX SHELL
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

tree dir/   #mostrar dir forma arbol
tree -CL 2 dir/   #Descend only level directories deep.  color
tree /F    # windows

pwd         #mostrar ruta
clear       #limpiar
history     #lista de comando usados

mkdir  dirname          #crear carpeta
mkdir -p dir/subdir      #crear subcarpetas
touch file.txt          #crearFile
echo hola mundo >> file.txt #agregar testo

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
tar -cvf file.tar /dir    #descompres tar Archive File
tar –xvzf  archive.tgz		#decomprimere
tar -xvzf archive.tar.gx -C archive_dir 	#decomprimere to dir
tar -tvf filename.tar   #view content

bzip2 -d       test.txt.bz2
zip -r dump.zip dump/   #compress folder
unzip file.zip          #decompress

wget  http:ruta.zip   #scarica risorse


date --set="2 OCT 2006 18:00:00"
purge       #liberar memoria


#Usuarios y permisos
sudo su #pasar a root
sudo su –    # permessi root
su user #cambia user
whoami #nombre usuario
groups #nombre  grupo
id  #info usuario
adduser newUser #
passwd user  tu pass   #change pasword
addgroup newGrupo 
usermod -g nameuser grupo #change group a user

cat /etc/passwd                         #List All Users
awk -F':' '{ print $1}' /etc/passwd     #List All Users


chown user:grupo /dir #change dir de user
chown -R user:grupo /dir     #change privileg


drwx - r - r     # user - grupo - otrosUser
r - w - x   # leer - scribir - ejecutar    -->file
r - w - x   # listar - modificar - acceder    -->dir
chmod -R 777   #permisos ala carpeta
chmod +r file   #agregar permisos de lectura
chmod -r file   #quitar permisos de lectura
chmod u-r file  #quita permisos solo user
chmod o-x file  #quita permisos de execute solo otros
chmod u-r, g+x file #modificando permisos
chmod u=w, o=wx file    

top 1	              #mostrar procesos
ps -fe | grep res     #processi
kill -9  25274   #kill  matar processi


ping 192.168.1.1   #comprobar IP esta respondiendo 
ping 8.8.8.8   #comprobar si tienes internet con ip google
netstat     #mostrar estado red
top         #mostrar todos los procesos
iptables -L -n -v  #1. Displaying the Status of Your Firewall  https://www.cyberciti.biz/tips/linux-iptables-examples.html

ssh root@IP    #conectar a servidor
rsync -rv jorge@IP:/var/www/build/path/vendor .
ftp hostname
nano /private/etc/hosts #path Hosts
nano ~/.bash_profile  #variables de entorno


iconv -f "windows-1252" -t "UTF-8" import.csv -o new_import.csv
