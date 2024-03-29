### WINDOWS
https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads    vc_redist.x64.exe
https://dev.mysql.com/downloads/windows/installer/8.0.html               Windows (x86, 32-bit), MSI Installer
install:  MySql Server, MySql shell, MySql Documentation. Samples, MySql Workbench

SET PATH=C:\Program Files\MySQL\MySQL Server 8.0\bin;%PATH%

/Library/Application Support/appsolute/MAMP PRO/db/mysql  #path db
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-centos-7

### Reset the MySQL Root Password
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
#mysqld_safe --skip-grant-tables --skip-networking &
mysql -u root
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MY_NEW_PASSWORD';
EXIT;

sudo kill `cat /var/run/mysqld/mysqld.pid`
sudo systemctl start mysql

ps aux | grep mysql
kill -9 PID
restart server

##### MYSQL TERMINAL
ssh -L 3333:localhost:3306 username@hostname

iptables -I INPUT 4 -p tcp --dport 3306 -s 95.**.**  -j ACCEPT
iptables -L -v

create user 'user'@'tuip' identified by 'Pass@123';
FLUSH PRIVILEGES;
SELECT * FROM mysql.user;


 mysql --version  --help
 mysql -u root -p
 mysql -u root -p < alldb.sql  # backup todas db
 mysql -u root -p database_name < file.sql  #update DB desde sql
 
 15 2 * * * root mysqldump -u root -p pass name_db | gzip > /home/jorge/mysql-bk/`data ' %m-%d-%Y'`.sql.gz 
 15 2 * * * root mysqldump -u root -p pass name_db | gzip > /home/jorge/database_`data ' %m-%d-%Y'`.sql.gz 

 
 mysqldump --opt -u root -p  --all-databases > alldb.sql
 mysqldump --opt -u root -p nameDB > bk_nameDB.sql
 
 show databases;
 use db
 show tables;
 desc table;  #mostrar structura tabla
 status;
 
CREATE database DATABASE_NAME;
DROP database DATABASE_NAME;


CREATE TABLE user_type (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
PRIMARY KEY (id))
ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO tabella (id, name, last_name) VALUES (null, 'jorge', 'figueroa');
UPDATE tabla SET columna ='valor nuevo' WHERE columna = 2 LIMIT 1;
DELETE from tabla where columna = '1' LIMIT 1;

############################ QUERY
select version(); #version de mysql
select now();   #mostrar fecha y ora
select concat('jorge', 'figueroa');
select dayname('1980-02-19');
select round(3.555);
select columna, columna2 FROM tabella ORDER BY id DESC LIMIT 1;  #ultimo registro
select count(*) from tabla;

select columna from table where columna like '%palabra'; 
select columna from table where columna like 'palabra%'; 
select columna from table where columna not like '%palabra%'; 
select columna from table where columna like '%palabra%' and columna like '%palabra2%' ; 

select columna from tabla order by columna desc;
select columna from tabla order by columna asc;
select columna from tabla LIMIT 0,5;  # muestra del resgistro 0 al 5



SELECT o.OrderID as order_name, c.CustomerName, o.OrderDate
FROM Orders as o
INNER JOIN Customers as c ON o.CustomerID=c.CustomerID
order by order_name





