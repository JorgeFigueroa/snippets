cmd 
bcdedit
bcdedit /set hypervisorlaunchtype off
bcdedit /set hypervisorlaunchtype auto

unistall vitualbox
rm C:\Users\jeorge.barroso\.VirtualBox
##rm C:\Users\jeorge.barroso\VirtualBox VMs
restart


"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" list hdds
VBoxManage.exe clonehd “C:\path\disco.vmdk” “C:\path\cloned_disco.vdi” —format vdi
VBoxManage.exe modifyhd “C:\path\cloned_ubuntu.vdi” —resize 24576
Change partitions GParted


Pannello di controllo\Sistema e sicurezza\Windows Defender Firewall\ impostazione avanazate\ regola di conezione in entrata
