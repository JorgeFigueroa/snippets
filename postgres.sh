open cmd
cd C:\Program Files\PostgreSQL\12\bin
psql --version
psql -h localhost -d mydb -U myuser -W
psql -d mydb -U myuser
      dt;


create database mydb;
create  user name-user  with  password 'pass';
\c mydb
