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
