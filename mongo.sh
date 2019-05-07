$mongod     
$mongo
127.0.0.1:27017

>help
>db.help
>db.help()
>db.stats()   stadisticas
exit
>show dbs
>use miPrimeraDB  // crea db

# edicion insertar buscar
show collections
db.collection.insert({nombre:”jorge”})  // crea collection
db.collection.find().pretty()
db.system.indexes.find()

#edicion borrar adaptar
db.collection.remove({edad:28})
use miPrimeraDB db.dropDatabase()




#incrementar e decremetar un campo numerico
db.collection.update(  {campo1:”aaa”},  {campo2 : “bbb”}  ) db.collection.update(  {nombre:”aaa”},   {$set: {apellido: “cccc”, edad 20}})
db.collection.update(  {campo:”valor”}, {$inc: { edad :1 }})
db.collection.update(  {campo:”valor”}, {$inc: { edad :-1 }})
db.collection.update(  {},   {$inc: { edad : 1 }},   false , true) // todos 






Mongo	
tail -f /var/log/mongodb/mongod.log

mongodump --query '{"key" : "value"}' --db <dbName> --collection <collectionName>
mongodump --db <dbName> --collection <collectionName> --queryFile query.json

mongorestore --drop dump_mongo-static		 // cancella vechio mongo e ricarica nuovo  db mongo
