#http://www.postgresqltutorial.com/psql-commands/
#https://www.postgresql.org/docs/12/app-pg-ctl.html
open cmd
win C:\Program Files\PostgreSQL\12\bin 
services.msc  postgres start
osx  /Library/PostgreSQL/11/bin

apt-get install postgresql  #ubuntu

PostgreSQL\11\data\postgresql.conf    #configuration file
  listen_addresses = '*'		# what IP address(es) to listen on;
  listen_addresses = 'IP1, IP2'	
  port = 5433				
  max_connections = 100			# (change requires restart)

PostgreSQL\11\data\pg_hba.conf        #Client Authentication Configuration File
  # TYPE  DATABASE        USER            ADDRESS                 METHOD
  local   all             postgres        trust
  # IPv4 local connections:
  host    all             all             127.0.0.1/32            md5
  # IPv6 local connections:
  host    all             all             ::1/128                 md5
  # Allow replication connections from localhost, by a user with the
  # replication privilege.
  host    replication     all             127.0.0.1/32            md5
  host    replication     all             ::1/128                 md5
  host    all             all             0.0.0.0/0               md5

./psql --version
./psql -h localhost -p 5432 -U postgres -W    #Connect to PostgreSQL database
./psql -h localhost -p 5432 -U postgres -d name_db -1 -f D:\name.dump  #restore

pg_dump -h localhost -p 5432 -U postgres -C -f D:\name.dump name_db  #dump


 
create database mydb;
create  user name_user  with  password 'pass';

DROP DATABASE name_database;

\c dbname username #connection database
\l    #List databases
\dt   #List tables


pg_ctl restart/start/status -D "C:\Program Files\PostgreSQL\12\data"

\connect name_db


#https://mauriziosiagri.wordpress.com/it/postgresql/postgresql-comandi-utili/
