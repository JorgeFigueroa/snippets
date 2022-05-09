#WIN10
https://www.apachelounge.com/download/	
https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads    vc_redist.x64.exe


Apache24\bin\httpd.exe    --> http://localhost
httpd.exe -k install    #install as a service. Open command prompt as Administrator
services.msc            #start/stop the service:
httpd -v
httpd -h                # All Command line options:
php -v

#UBUNTU
 apt-get install apache2
 ps -A | grep apache2
 apache2ctl [-k start|restart|graceful|graceful-stop|stop]	#Gestión del servicio
 #Gestión del servicio
 apache2ctl -t	#test sintax file config
 apache2ctl -M  #show modules
 apache2ctl -S	#show virtualhost
 apache2ctl -V	#show version
 systemctl [start|stop|restart|reload|status] apache2.service 	#Gestión con systemd
 
 #files di configuración
 /etc/apache2/apache2.conf
 /etc/apache2/envvars  #Variables de entorno
 /etc/apache2/conf-available
	a2enconf name_conf	#attiva configuracion
	a2disconf name_conf #dissativa configuracion
	a2enmod name_modulo # attiva modulo
	a2dismod name_modulo # disativa modulo
	a2endite name_site	#attiva site
	a2dissite name_site	#disativa site
	
	chown -R www-data:www-data site




##  httpd.conf
cd Apache24\conf\httpd.conf
<IfModule dir_module>
    DirectoryIndex index.html index.php
</IfModule>

<IfModule php7_module>
    AddHandler application/x-httpd-php .php
    PHPIniDir "C:/phpVersion"
</IfModule>

LoadModule php7_module C:/phpVersion/php7apache2_4.dll
LoadModule vhost_alias_module modules/mod_vhost_alias.so
LoadModule rewrite_module modules/mod_rewrite.so
Include conf/extra/httpd-vhosts.conf


#https://www.linode.com/docs/web-servers/apache/install-and-configure-apache-on-centos-7/
#### APACHE #httpd.conf modulos y  cors   
MAMP_headers_module_MAMPLoadModule headers_module modules/mod_headers.so
MAMP_rewrite_module_MAMPLoadModule rewrite_module modules/mod_rewrite.so

<IfModule mod_headers.c>
    Header set Access-Control-Allow-Origin "*"
    Header set Access-Control-Allow-Headers "*"
    Header set Access-Control-Allow-Methods "GET, POST, PUT, DELETE, OPTIONS"
</IfModule>



# Virtual hosts
run cmd ---> administrator
notepad C:\Apache24\conf\extra\httpd-vhosts.conf

	<VirtualHost demo1.com:80>
	    ServerAdmin webmaster@demo1.com
	    DocumentRoot "/sites/demo1.com"
	    ServerName demo1.com
	    ServerAlias www.demo1.com
		<Directory "c:/sites/demo1.com">
		   AllowOverride All
		   Require all granted
		   Options Indexes FollowSymLinks
		</Directory>
	    ErrorLog "logs/demo1.com-error.log"
	    CustomLog "logs/demo1.com-access.log" common
	</VirtualHost>


notepad C:\Windows\System32\drivers\etc\hosts

	127.0.0.1 demo1.com	www.demo1.com
	127.0.0.1 demo2.com	www.demo2.com

services.msc       
	#restart Apache2.4   
	#start MySQL80   cmd mysql -u root -p



## CREAR CERTIFICADO AUTOFIRMADO SSL 
Instalar openSSL
openssl genrsa -out chiave.key 2084 #Generar Llave privada
openssl req -new -key ca.key -out ca.csr	#Generar Archivo CSR 
openssl x509 -req -days 90 -in ca.csr -signkey chiave.key -out certificato.crt	#Generar Certificado 

openssl req -nodes -x509 -newkey rsa:4096 -keyout chiave.key -out certificato.crt -days 365 -subj /CN=nomedominio.com

#C:\Apache24\conf\httpd.conf
LoadModule ssl_module modules/mod_ssl.so
LoadModule socache_shmcb_module modules/mod_socache_shmcb.so
Include conf/extra/httpd-ssl.conf


#C:\Apache24\conf\extra\httpd-vhosts.conf
<VirtualHost symfony_rest_videos.test:443>
	ServerAdmin webmaster@symfony_rest_videos.test
	DocumentRoot "/sites/symfony_rest_videos.test"
	ServerName symfony_rest_videos.test
	ServerAlias www.symfony_rest_videos.test
	
	SSLEngine on
	SSLCertificateFile "C:\Apache24\conf\server.crt"
	SSLCertificateKeyFile "C:\Apache24\conf\server.key"
	
	<Directory "C:/sites/symfony_rest_videos.test">
	   AllowOverride All
	   Require all granted
	   Options Indexes FollowSymLinks
	</Directory>
	ErrorLog "logs/symfony_rest_videos.test-error.log"
	CustomLog "logs/symfony_rest_videos.test-access.log" common
</VirtualHost>













