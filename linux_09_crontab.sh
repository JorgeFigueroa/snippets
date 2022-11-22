sudo apt install cron
sudo systemctl enable --now cron
ls -l /var/spool/cron/crontabs

### Cron e Schedulazioni
ps aux|grep cron  #check process cron
crontab -l        #list cron
crontab -e        #edit cron
crontab -u root -e
0 */2 * ? * *  /path/script.sh >> /path/log.log

0 */2 * ? * *	  #Every 2 minutes
0 */30 * ? * *	#Every 30 minutes
0 0 6 * * ?	    #Every day at 6am
