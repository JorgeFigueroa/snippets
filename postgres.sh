#http://www.postgresqltutorial.com/psql-commands/
#https://www.postgresql.org/docs/12/app-pg-ctl.html
open cmd
win C:\Program Files\PostgreSQL\12\bin 
services.msc  postgres start
## OSX  
/Library/PostgreSQL/11/bin
/Library/PostgreSQL/11/scripts/runpsql.sh

apt-get install postgresql  /etc/postgresql/num_version/main/pg_hba.conf  #ubuntu
/etc/init.d/postgresql restart

PostgreSQL\11\data\postgresql.conf    #configuration file
  listen_addresses = '*'		# what IP address(es) to listen on;
  listen_addresses = 'IP1, IP2'	
  port = 5433				
  max_connections = 100			# (change requires restart)

PostgreSQL\11\data\pg_hba.conf        #Client Authentication Configuration File
  # TYPE  DATABASE        USER            ADDRESS                 METHOD
  local   all             postgres                                trust
  host    replication     all             127.0.0.1/32            md5
  host    all             all             0.0.0.0/0               md5

./psql --version
./psql -h localhost -p 5432 -U postgres -W    #Connect to PostgreSQL database
./psql -h localhost -p 5432 -U postgres -d name_db -1 -f D:\name.dump  #restore

pg_dump -h localhost -p 5432 -U postgres -C -f D:\name.dump name_db  #dump


CREATE ROLE NAME_ROLE LOGIN PASSWORD 'PASS'
create database mydb OWNER  NAME_ROLE;
create user name_user  with  password 'pass';
ALTER USER user_name WITH PASSWORD 'new_password';


DROP DATABASE name_database;

\c dbname username #connection database
\l    #List databases
\connect name_db
\dt   #List tables
\q    #esci

pg_ctl restart/start/status -D "C:\Program Files\PostgreSQL\12\data"




#https://mauriziosiagri.wordpress.com/it/postgresql/postgresql-comandi-utili/
