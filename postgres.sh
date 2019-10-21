#http://www.postgresqltutorial.com/psql-commands/
open cmd
win C:\Program Files\PostgreSQL\12\bin 
osx  /Library/PostgreSQL/11/bin

pg_dump -U postgres -C -f D:\path\name.dump name_db  #dump
create database name_db;
./psql -U postgres -d name_db -1 -f D:\path\name.dump  #restore

./psql --version
./psql -h localhost -U postgres -W    #Connect to PostgreSQL database
 
create database mydb;
create  user name_user  with  password 'pass';

DROP DATABASE name_database;

\c dbname username #connection database
\l    #List databases
\dt   #List tables





