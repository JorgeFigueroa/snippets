#http://www.postgresqltutorial.com/psql-commands/
open cmd
cd C:\Program Files\PostgreSQL\12\bin
psql --version
psql -h localhost -d mydb -U myuser -W    #Connect to PostgreSQL database
psql -d mydb -U myuser
 
create database mydb;
create  user name_user  with  password 'pass';
\c mydb
\c dbname username #connection database
\l    #List databases
\dt   #List tables





