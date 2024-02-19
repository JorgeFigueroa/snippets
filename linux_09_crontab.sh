sudo apt install cron
systemctl enable --now cron
ls /var/spool/cron/crontabs

export VISUAL=nano; crontab -e

### Cron e Schedulazioni
ps aux|grep cron  #check process cron
crontab -l        #list cron
crontab -e        #edit cron
crontab -u <nombre_de_usuario> -e
crontab -l -u <nombre_de_usuario>

sudo systemctl stop cron
sudo systemctl disable cron

minute(s) hour(s) day(s) month(s) weekday(s) command(s)

0 */2 * ? * *  /path/script.sh >> /path/log.log

0 */2 * ? * *	  #Every 2 minutes
0 */30 * ? * *	#Every 30 minutes
0 0 6 * * ?	    #Every day at 6am
