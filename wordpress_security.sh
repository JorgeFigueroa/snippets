install.php, readme.html, plugin y temas no utilizados  #CANCELAR
siempre wordpress y plugins                             #ACTUALIZAR
keepass  #contrasenas robustas
<?php //silence is golden. #crear index.php antilistado de directorios

#file robots.txt
#global
User-agent: *
Disallow: /cgi-bin/
Disallow: /wp-admin/
Disallow: /wp-includes/
Disallow: /wp-content/plugins/
Disallow: /wp-content/cache/
Disallow: /wp-content/themes/
Disallow: /trackback/
Disallow: /feed/
Disallow: /comments/*/*
Disallow: */trackback/
Disallow: */feed/
Disallow: */comments/
Disallow: /*?


# Version wordpress themes/tu_plantilla/functions.php 
remove_action('wp_head', 'wp_generator'); 
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'rds_link');
add_filter('pre_comment_content', 'wp_specialchars');  #para evitar codigos html y inyecciones en los comentarios


.HTACCESS
#Protect wpconfig.php
<files wp-config.php>
order allow,deny
deny from all
</files>
#Protect wp-admin/install.php
<files install.php>
order allow,deny
deny from all
</files>
#Antilistado de directorio
Options all -Indexes 

#PLUGINS
All In One WP Security  #cambiar prefijos de DB
Acunetix WP Security  #controlar permisos de las carpetas
Exploit Scanner    #escanear sito ha sido infectado
Sucuri security - Sitecheck # malware, lista negras, redirecciones dentro .htaccess
login lockDown   # restringir tentativos de acessos
hc custom wp-admin url  # cambiar nombre carpeta wp-admin
Plainview Activity Monitor  # monitorar usuarios
Advanced Automatic Updates  # relizar actualizaciones automaticas 
easy captcha
stop spamer


#blindar el acceso wp-config.php
https://api.wordpress.org/secret-key/1.1/salt/

#Comentarios
Allow people to post comments on new article # desabilitar
Anyone can register # desabilitar

#Scanear si el sito si es seguro
http://www.google.com/safebrowsing/diagnostic?site=
https://sitecheck.sucuri.net/
https://www.virustotal.com/
inurl:wordpress/wp-content/plugins  #test poner en google


admin_seguridad
wp_atientas
yategane


#####  WORDPREES MULTISITE
wp-config. php
define( 'WP_ALLOW_MULTISITE', true );