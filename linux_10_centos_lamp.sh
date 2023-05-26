ssh username@ip_address

rpm --query centos-release   #version centos
which yum

https://www.linode.com/docs/web-servers/apache/install-and-configure-apache-on-centos-7/
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-centos-7

#apache centos 7
yum install php71-php-mcrypt.x86_64   httpd
/etc/httpd/conf/httpd.conf

firewall-cmd --zone=public --permanent --add-service=http

systemctl [enable, start, status, reload]  firewalld
systemctl httpd: [start, enable, status, restart]
apachectl [status, configtest, graceful]
service [start, restart, reload] httpd
service mysqld  [start, status, enable]
/etc/init.d/php7-fpm restart

chkconfig httpd on
chkconfig  mysqld  on



nano /etc/hosts


env   #mostra variabili di ambiente
echo $PATH

