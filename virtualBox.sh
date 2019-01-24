"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" list hdds
VBoxManage clonehd box-disk1.vmdk box-disk1.vdi --format vdi
VBoxManage.exe clonehd “C:\path\ubuntu.vmdk” “C:\path\cloned_ubuntu.vdi” — format vdi

VBoxManage.exe modifyhd “C:\path\cloned_ubuntu.vdi” — resize 24576
VBoxManage modifyhd box-disk1.vdi --resize 10240 