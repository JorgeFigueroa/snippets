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
