#http://www.postgresqltutorial.com/psql-commands/
#https://www.postgresql.org/docs/12/app-pg-ctl.html
open cmd
win C:\Program Files\PostgreSQL\12\bin 
osx  /Library/PostgreSQL/11/bin

PostgreSQL\11\data\pg_hba.conf
PostgreSQL\11\data\postgresql.conf  # file di config

./psql --version
./psql -h localhost -p 5432 -U postgres -W    #Connect to PostgreSQL database

pg_dump -h localhost -p 5432 -U postgres -C -f D:\name.dump name_db  #dump
./psql -h localhost -p 5432 -U postgres -d name_db -1 -f D:\name.dump  #restore


 
create database mydb;
create  user name_user  with  password 'pass';

DROP DATABASE name_database;

\c dbname username #connection database
\l    #List databases
\dt   #List tables


pg_ctl restart/start/status -D "C:\Program Files\PostgreSQL\12\data"

\connect name_db


#https://mauriziosiagri.wordpress.com/it/postgresql/postgresql-comandi-utili/
