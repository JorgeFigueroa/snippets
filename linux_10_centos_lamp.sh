ssh username@ip_address


rpm --query centos-release   #version centos
which yum

https://www.linode.com/docs/web-servers/apache/install-and-configure-apache-on-centos-7/
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-centos-7

#apache centos 7
yum install php71-php-mcrypt.x86_64   httpd
httpd -V
/etc/httpd/conf/httpd.conf

firewall-cmd --zone=public --permanent --add-service=http
systemctl [enable, start, status, reload]  firewalld

systemctl httpd: [start, enable, status, restart]
apachectl [status, configtest, graceful]
service [start, restart, reload] httpd
chkconfig httpd on

/etc/init.d/php7-fpm restart

service mysqld  [start, status, enable]
chkconfig  mysqld  on


#centos 6
/etc/sysconfig/network-scripts/ifcfg-eth0  #red
service network:  restart, status
service iptables  stop
chkconfig iptables  off



nano /etc/hosts



ps aux | grep java
kill -9 PID
killall -e COMMAND

java -jar file.jar
nohup java -jar file.jar > /dev/null &



### Montare un device
lsblk -a  #lista dispositivia blocchi
mount /dev/sr0 /path/destinazione  #Montare il lettore cd virtuale
umount /dev/sr0  #Smontare il lettore cd virtuale
/etc/fstab  #lista dei dispositivi da montare al boot
df -h   #Spazio libero sul sistema
du -hs  #Spazio occupato della cartella


env   #mostra variabili di ambiente
echo $PATH

