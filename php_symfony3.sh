### PHP
nano ~/.bash_profile
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin # MAMP PHP
export PATH="$MAMP_PHP:$PATH"

php --ini
open /Applications/MAMP/bin/php/php5.6.10/conf/php.ini   display_errors = on
php -v  --help  -i  -m
ini_set("memory_limit", -1); #aumentar tiempo de excucion
max_execution_time = 3000


#config module mongo
https://github.com/mongodb/mongo-php-driver
git clone https://github.com/mongodb/mongo-php-driver.git
cd mongo-php-driver
git submodule update --init
phpize
./configure --with-mongodb-ssl=darwin
make all
sudo make install

#Enable PHP module
cd php-version/ext/pcntl
brew install m4   ln -s /usr/local/opt/m4/bin/m4 /Applications/MAMP/Library/bin/m4
phpize
./configure
make
cp modules/pcntl.so /Applications/MAMP/bin/php/php5.3.6/lib/php/extensions/no-debug-non-zts-20090626/
echo "extension=pcntl.so" >> /Applications/MAMP/bin/php/php5.3.6/conf/php.ini
php --ri pcntl


#seguridad php.ini
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
 xdebug.remote_handler="dbgp"
 xdebug.remote_autostart=1
 xdebug.max_nesting_level=250


https://www.linode.com/docs/web-servers/apache/install-and-configure-apache-on-centos-7/
#### APACHE #httpd.conf modulos y  cors   
MAMP_headers_module_MAMPLoadModule headers_module modules/mod_headers.so
MAMP_rewrite_module_MAMPLoadModule rewrite_module modules/mod_rewrite.so

<IfModule mod_headers.c>
    Header set Access-Control-Allow-Origin "*"
    Header set Access-Control-Allow-Headers "*"
    Header set Access-Control-Allow-Methods "GET, POST, PUT, DELETE, OPTIONS"
</IfModule>



#instalar COMPOSER 
$sudo mv composer.phar /usr/local/bin/composer
composer -v


composer create-project symfony/framework-standard-edition symfony/ "3.1.*"
web/config.php    #URL Configuration
web/app_dev.php   #URL DesarroloLocal 
app/config/parameters #DB
css js            # web/assets

"require": {"knplabs/knp-paginator-bundle": "2.5.*"} #composer.json dependencias
$composer update

#Generar bundle para las entidades
php bin/console generate:bundle --namespace=BackendBundle --format=yml
  src/BackendBundle/Controller
  src/BackendBundle/Resources

/app  config.yml, routing.yml, AppKernel.php  #Remove Bundle

#Generar entidades para el proyecto
php bin/console doctrine:mapping:import BackendBundle yml # genera .yml desde tabla db
  src/BackendBundle/Resources/config/doctrine/NameTable.orm.yml

php bin/console doctrine:generate:entities BackendBundle  # genera clases .php desde .yml
  src/BackendBundle/Entity/NameTable.php


##### RUTAS 
#app/config/routing.yml
app:
    resource: "@AppBundle/Resources/config/routing.yml"
    prefix: /

#src/AppBundle/Resource/config/routing.yml
app_user:
  resource: "@AppBundle/Resources/config/routing/user.yml"
  prefix: /
app_homepage:
  path: /
  defaults: { _controller: AppBundle:User:login}
  
#src/AppBundle/Resource/config/routing/user.yml
login:
  path: /login
  defaults: {_controller: AppBundle:User:login}


#### CONTROLADOR src/AppBundle/Controller
class UserController extends Controller
    public function loginAction(Request $request)
        return $this->render('AppBundle::vista.html.twig',array( "parametro_vista" => "valor" ));
    

src/AppBundle/Resource/views/vista.html.twing  ## VISTA


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



################### LARAVEL
nano /private/etc/hosts
composer create-project laravel/laravel tu_proyecto "5.0.*" --prefer-dist


nano ~/.bash_profile  # abilita comando laravel 
export PATH="$PATH:$HOME/.composer/vendor/bin"

laravel new tu_proyecto
php artisan serve
php artisan down
php artisan up
php artisan make:controller tu_controllador
php artisan migrate            # crea tablas nell database in base cuntas migration tenemos creadas
php artisan migrate:rollback
php artisan make:migration prueva  # crea una Migration dentro de database/migration/
php artisan db:seed
php artisan make:model Article  # crea un model dentro de app/



####LUMEN
composer create-project laravel/lumen=5.1 LumenAPI
composer create-project laravel/lumen LumenAPI2 "5.1.*"
composer create-project --prefer-dist laravel/lumen blog
composer require laravel/homestead
php vendor/bin/homestead make    #crea archivo de configuracion Homestead.yaml
ssh-keygen -t rsa -C "you@homestead"  #cd /Users/jorge/.ssh

# link para el idioma espanol
https://github.com/caouecs/Laravel-lang/blob/master/src/es/validation.php




 /Library/Application Support/appsolute/MAMP PRO/db/mysql56   ##MAMP PRO 4 stores data