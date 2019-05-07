$mongod     $mongo     #127.0.0.1:27017
help
db.help
db.help()
exit
show dbs
show collections

use miPrimeraDB   #crea db
use miPrimeraDB.db.dropDatabase()

tail -f /var/log/mongodb/mongod.log

mongodump --query '{"key" : "value"}' --db <dbName> --collection <collectionName>
mongodump --db <dbName> --collection <collectionName> --queryFile query.json
mongorestore --drop dump_mongo-static		 #cancella vechio mongo e ricarica nuovo  db mongo


