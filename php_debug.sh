nano ~/.bash_profile
# MAMP PHP
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin
export PATH="$MAMP_PHP:$PATH"


php -v
php --ini
open /Applications/MAMP/bin/php/php5.6.10/conf/php.ini   display_errors = on



[xdebug]
zend_extension="/Applications/MAMP/bin/php/php5.5.10/lib/php/extensions/no-debug-non-zts-20121212/xdebug.so"
xdebug.remote_enable=1
xdebug.remote_host=127.0.0.1
xdebug.remote_port=10137
xdebug.remote_handler="dbgp"