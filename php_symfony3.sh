#08_Instalar Symfony3
composer create-project symfony/framework-standard-edition symfony/ "3.0.7"
composer create-project symfony/framework-standard-edition symfony/ "3.1.*"

#URL Configuration web/config.php  
#URL DesarroloLocal web/app_dev.php

base datos  -> app/config/parameters
css js  ->   web/assets


#10_composer.json dependencias
"require": {"knplabs/knp-paginator-bundle": "2.5.*"}
$composer update


#11_Generar bundle para las entidades
$sudo php bin/console generate:bundle --namespace=BackendBundle --format=yml
src/BackendBundle/Controller
src/BackendBundle/Resources

RemoveBundle /app  config.yml, routing.yml, AppKernel.php

#12_Generar entidades para el proyecto
sudo php bin/console doctrine:mapping:import BackendBundle yml // genera .yml desde tabla db
src/BackendBundle/Resources/config/doctrine/NameTable.orm.yml

sudo php bin/console doctrine:generate:entities BackendBundle  // genera clases .php desde .yml
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


#### CONTROLADOR
#src/AppBundle/Controller
class UserController extends Controller
    public function loginAction(Request $request)
        return $this->render('AppBundle::vista.html.twig',array( "parametro_vista" => "valor" ));
    

#####  VISTA
#src/AppBundle/Resource/views/vista.html.twing


################### LARAVEL
sudo nano /private/etc/hosts
composer create-project laravel/laravel tu_proyecto "5.0.*" --prefer-dist


nano ~/.bash_profile  // abilita comando laravel 
export PATH="$PATH:$HOME/.composer/vendor/bin"

laravel new tu_proyecto

php artisan serve
php artisan down
php artisan up

php artisan make:controller tu_controllador


php artisan migrate            // crea tablas nell database in base cuntas migration tenemos creadas
php artisan migrate:rollback
php artisan make:migration prueva  // crea una Migration dentro de database/migration/
php artisan db:seed
php artisan make:model Article  // crea un model dentro de app/