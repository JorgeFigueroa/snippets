systemctl list-unit-files --type=service
systemctl list-unit-files --type=service | grep enabled

systemctl disable <nombre_del_servicio>
systemctl enable <nombre_del_servicio>
systemctl start <nombre_del_servicio>

top 1	                #mostrar procesos
ps -fe | grep res     #filtar processi
kill -9  numero_process        #kill  matar processi
pkill -f nome_ruta_file
