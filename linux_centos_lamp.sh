ssh username@ip_address


rpm --query centos-release   #version centos
which yum

https://www.linode.com/docs/web-servers/apache/install-and-configure-apache-on-centos-7/
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-centos-7

#apache centos 7
yum install php71-php-mcrypt.x86_64   httpd
httpd -V
systemctl httpd: start, enable, status, restart
firewall-cmd --zone=public --permanent --add-service=http
/etc/init.d/php7-fpm restart

systemctl enable start status reload  firewalld




#centos 6
/etc/sysconfig/network-scripts/ifcfg-eth0  #red
service network:  restart, status
service iptables  stop
chkconfig iptables  off

#apache
/etc/httpd/conf/httpd.conf
apachectl: status, configtest, graceful
service start, restart, reload: httpd
chkconfig httpd on

nano /etc/hosts


service mysqld:  start, status, enable
chkconfig  mysqld  on

ps aux | grep java
kill -9 pid


java -jar file.jar
nohup java -jar file.jar > /dev/null &




### Montare un device
lsblk -a  #lista dispositivia blocchi
mount /dev/sr0 /path/destinazione  #Montare il lettore cd virtuale
umount /dev/sr0  #Smontare il lettore cd virtuale
/etc/fstab  #lista dei dispositivi da montare al boot
df -h   #Spazio libero sul sistema
du -hs  #Spazio occupato della cartella



#Utenti e Gruppi permisos
/etc/passwd       #List All Users
awk -F':' '{ print $1}' /etc/passwd     #List All Users
/etc/shells       #list shell disponibile per user
/etc/shadow       #password deili utenti
/etc/group        #list grups

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



env   #mostra variabili di ambiente
echo $PATH

### Cron e Schedulazioni
ps aux|grep cron  #check process cron
crontab -l        #list cron
crontab -e        #edit cron
0 */2 * ? * *  /path/script.sh >> /path/log.log

0 */2 * ? * *	  #Every 2 minutes
0 */30 * ? * *	#Every 30 minutes
0 0 6 * * ?	    #Every day at 6am
