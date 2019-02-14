
composer create-project symfony/framework-standard-edition symfony/ "3.0.7"
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






################### LARAVEL
nano /private/etc/hosts
composer create-project laravel/laravel tu_proyecto "5.0.*" --prefer-dist


nano ~/.bash_profile  // abilita comando laravel 
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


