#WIN10
https://www.apachelounge.com/download/
https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads    vc_redist.x64.exe


Apache24\bin\httpd.exe    --> http://localhost
httpd.exe -k install    #install as a service. Open command prompt as Administrator
services.msc            #You can start/stop the service:

httpd -h                # All Command line options:



https://windows.php.net/download#php-7.4        VC15 x64 Thread Safe 

##  httpd.conf
cd Apache24\conf\httpd.conf
<IfModule dir_module>
    DirectoryIndex index.html index.php
</IfModule>

LoadModule php7_module C:/phpVersion/php7apache2_4.dll
<IfModule php7_module>
    AddHandler application/x-httpd-php .php
    PHPIniDir "C:/phpVersion"
</IfModule>

LoadModule vhost_alias_module modules/mod_vhost_alias.so
Include conf/extra/httpd-vhosts.conf



# Virtual hosts
cd Apache24\conf\extra\httpd-vhosts.conf
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

<VirtualHost demo2.com:80>
    ServerAdmin webmaster@demo2.com
    DocumentRoot "/sites/demo2.com"
    ServerName demo2.com
    ServerAlias www.demo2.com
	<Directory "c:/sites/demo2.com">
	   AllowOverride All
	   Require all granted
	   Options Indexes FollowSymLinks
	</Directory>
    ErrorLog "logs/demo2.com-error.log"
    CustomLog "logs/demo2.com-access.log" common
</VirtualHost>



C:\Windows\System32\drivers\etc\hosts
127.0.0.1 demo1.com	www.demo1.com
127.0.0.1 demo2.com	www.demo2.com

services.msc       #restart Apache2.4










