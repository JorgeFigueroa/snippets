"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" list hdds
VBoxManage.exe clonehd “C:\path\disco.vmdk” “C:\path\cloned_disco.vdi” — format vdi
VBoxManage.exe modifyhd “C:\path\cloned_ubuntu.vdi” — resize 24576
