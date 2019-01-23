https://www.linode.com/docs/web-servers/apache/install-and-configure-apache-on-centos-7/

#### APACHE #httpd.conf modulos y  cors   
MAMP_headers_module_MAMPLoadModule headers_module modules/mod_headers.so
MAMP_rewrite_module_MAMPLoadModule rewrite_module modules/mod_rewrite.so

<IfModule mod_headers.c>
    Header set Access-Control-Allow-Origin "*"
    Header set Access-Control-Allow-Headers "*"
    Header set Access-Control-Allow-Methods "GET, POST, PUT, DELETE, OPTIONS"
</IfModule>


### PHP
php -v  --help  -i  -m  --ini
ini_set("memory_limit", -1); #aumentar tiempo de excucion
max_execution_time = 3000

#config module mongo
https://github.com/mongodb/mongo-php-driver
$ git clone https://github.com/mongodb/mongo-php-driver.git
$ cd mongo-php-driver
$ git submodule update --init
$ phpize
$ ./configure --with-mongodb-ssl=darwin
$ make all
$ sudo make install

#seguridad
max_execution_time = 30
memory_limit = 128M
upload_max_filesize = 3M
allow_url_include = Off
include_path = ".:/Applications/MAMP/bin/php/php7.2.1/lib/php"
session.save_handler = files
allow_url_include=Off
Production Value: E_ALL & ~E_DEPRECATED & ~E_STRICT
display_errors = Off
log_errors = On
error_log = dir

bind-address = 127.0.0.1    #my.cnf:


[xdebug]
zend_extension="/Applications/MAMP/bin/php/php5.6.10/lib/php/extensions/no-debug-non-zts-20131226/xdebug.so"
xdebug.remote_handler="dbgp"
xdebug.max_nesting_level=250
[xdebug]
MAMP_Xdebug_MAMP
 xdebug.remote_enable=1
 xdebug.remote_host=localhost
 xdebug.remote_port=9000
 xdebug.remote_autostart=1
 xdebug.max_nesting_level=250




#instalar COMPOSER 
$sudo mv composer.phar /usr/local/bin/composer
composer -v




#Zendframework2
php public/index.php  
#symfony
php bin/console    
php bin/console generate:bundle --namespace=BackendBundle --format=yml	#generar Bundle
php bin/console doctrine:mapping:import BackendBundle yml
php bin/console doctrine:mapping:import BackendBundle yml –filter=”tablaNueva”
php bin/console doctrine:mapping:convert annotation ./src
php bin/console doctrine:generate:entities BackendBundle           - > crear carpeta Entity
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:schema:update –force
php bin/console doctrine:schema:validate
php bin/console  debug:router     -  > lista de rutas



#### LARAVEL
composer create-project laravel/laravel tu_proyecto "5.0.*" --prefer-dist
laravel new tu_proyecto
$php artisan serve
$php artisan down
$php artisan up
$php artisan make:controller tu_controllador
$php artisan migrate                 #crea tablas nell database in base cuntas migration tenemos creadas
$php artisan migrate:rollback
$php artisan make:migration prueva   #crea una Migration dentro de database/migration/
$php artisan db:seed
$php artisan make:model Article      #crea un model dentro de app/


####LUMEN
composer create-project laravel/lumen=5.1 LumenAPI
composer create-project laravel/lumen LumenAPI2 "5.1.*"
composer create-project --prefer-dist laravel/lumen blog
composer require laravel/homestead
php vendor/bin/homestead make    #crea archivo de configuracion Homestead.yaml
ssh-keygen -t rsa -C "you@homestead"  #cd /Users/jorge/.ssh

# link para el idioma espanol
https://github.com/caouecs/Laravel-lang/blob/master/src/es/validation.php