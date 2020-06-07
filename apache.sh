#WIN10
https://www.apachelounge.com/download/
https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads    vc_redist.x64.exe


Apache24\bin\httpd.exe    --> http://localhost
httpd.exe -k install    #install as a service. Open command prompt as Administrator
services.msc            #You can start/stop the service:

httpd -h                # All Command line options:



https://windows.php.net/download#php-7.4        VC15 x64 Thread Safe 


C:\Apache24\conf\httpd.conf
<IfModule dir_module>
    DirectoryIndex index.html index.php
</IfModule>
