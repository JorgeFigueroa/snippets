sudo apt install cron
systemctl enable --now cron
ls /var/spool/cron/crontabs

export VISUAL=nano; crontab -e
sudo EDITOR=nano crontab -e
sudo VISUAL=nano crontab -e



### Cron e Schedulazioni
ps aux|grep cron  #check process cron
crontab -l        #list cron
crontab -e        #edit cron
crontab -u <nombre_de_usuario> -e
crontab -l -u <nombre_de_usuario>
crontab -r    #deshabilitar task de cron para un usuario


sudo systemctl stop cron
sudo systemctl disable cron
sudo systemctl reload cron
sudo systemctl restart cron



minute(s) hour(s) day(s) month(s) weekday(s) command(s)

0 */2 * ? * *  /path/script.sh >> /path/log.log

0 */2 * ? * *	  #Every 2 minutes
0 */30 * ? * *	#Every 30 minutes
0 0 6 * * ?	    #Every day at 6am


* * * * * comando_a_ejecutar
- - - - -
| | | | |
| | | | +---- Día de la semana (0 - 7) (Domingo es 0 o 7)
| | | +------ Mes (1 - 12)
| | +-------- Día del mes (1 - 31)
| +---------- Hora (0 - 23)
+------------ Minuto (0 - 59)
