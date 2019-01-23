
sudo nano /private/etc/hosts

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

