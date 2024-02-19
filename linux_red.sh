iptables -L -n -v  #1. Displaying the Status of Your Firewall  https://www.cyberciti.biz/tips/linux-iptables-examples.html

ssh user@IP    #conectar a servidor
ssh -i key.pem user@IP -pNUMERO_PORT
scp -P PORT -r -i path/key.pem /path_local user@IP_REMOTE:/path_destination
scp -r path_local file1.json file2.md user@IP_REMOTE:/path_destination
scp -r src  *.{md,json} user@IP_REMOTE:/path_destination

rsync -rv user@IP:/var/www/build/path/vendor .
rsync -avz -e "ssh -i  key.pem -p PORT" /path_local  user@IP:/path_destination
rsync -av -e "ssh -i  key.pem -p PORT" --exclude='file.txt' user@IP:/path_destination


 
ftp hostname

ping 192.168.1.1   #comprobar IP esta respondiendo
ping 8.8.8.8   #comprobar si tienes internet con ip google

netstat     #mostrar estado red
netstat -tnlp | grep :22222
netstat -tnlp | grep apache
netstat -na | grep 8080 | grep ESTABLISHED # view user conected
netstat -na | grep 443 | grep ESTABLISHED  # view user conected


#centos 6
/etc/sysconfig/network-scripts/ifcfg-eth0  #red
service network:  restart, status
service iptables  stop
chkconfig iptables  off
