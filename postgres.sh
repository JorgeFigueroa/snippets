#http://www.postgresqltutorial.com/psql-commands/
open cmd
cd C:\Program Files\PostgreSQL\12\bin

pg_dump -U postgres -C  -f D:\path\name.dump name_db #dump
psql -U postgres < D:\nuxeo\barclays.dump            #restore

psql --version
psql -h localhost -U myuser -W    #Connect to PostgreSQL database
 
create database mydb;
create  user name_user  with  password 'pass';

\c dbname username #connection database
\l    #List databases
\dt   #List tables





