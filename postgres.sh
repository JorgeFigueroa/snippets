#http://www.postgresqltutorial.com/psql-commands/
#https://www.postgresql.org/docs/12/app-pg-ctl.html
open cmd
win C:\Program Files\PostgreSQL\12\bin 
osx  /Library/PostgreSQL/11/bin

pg_dump -h localhost -p 5432 -U postgres -C -f D:\name.dump name_db  #dump
create database name_db;
./psql -h localhost -p 5432 -U postgres -d name_db -1 -f D:\name.dump  #restore

./psql --version
./psql -h localhost -p 5432 -U postgres -W    #Connect to PostgreSQL database
 
create database mydb;
create  user name_user  with  password 'pass';

DROP DATABASE name_database;

\c dbname username #connection database
\l    #List databases
\dt   #List tables


pg_ctl restart/start/status -D "C:\Program Files\PostgreSQL\12\data"

\connect name_db


