systemctl list-unit-files --type=service
systemctl list-unit-files --type=service | grep enabled

sudo systemctl disable <nombre_del_servicio>
sudo systemctl enable <nombre_del_servicio>
sudo systemctl start <nombre_del_servicio>
