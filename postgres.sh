#http://www.postgresqltutorial.com/psql-commands/
open cmd
cd C:\Program Files\PostgreSQL\12\bin

pg_dump -U username -C -f D:\path\name.dump name_db  #dump
create database name_db;
./psql -U postgres -d name_db -1 -f D:\path\name.dump  #restore

./psql --version
./psql -h localhost -U myuser -W    #Connect to PostgreSQL database
 
create database mydb;
create  user name_user  with  password 'pass';

DROP DATABASE name_database;

\c dbname username #connection database
\l    #List databases
\dt   #List tables





