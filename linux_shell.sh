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

pwd         #mostrar ruta
clear       #limpiar
history     #lista de comando usados

mkdir  dirname          #crear carpeta
mkdir -p dir/fotos      #crear subcarpetas
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
passwd user     #change pasword
addgroup newGrupo 
usermod -g nameuser grupo #cambiar grupo a user

chown user:grupo /dir #cambiar dir de user
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
kill -9        25274 25275 25294 #kill processi


ping 192.168.1.1   #comprobar ip esta respondiendo 
ping 8.8.8.8   #comprobar si tienes internet con ip google
netstat     #mostrar estado red
top         #mostrar todos los procesos


$ ssh root@IP    #conectar a servidor
$ rsync -rv jorge@IP:/var/www/build/path/vendor .

$ ftp hostname

$ sudo nano /private/etc/hosts #path Hosts
$ nano ~/.bash_profile  #variables de entorno
