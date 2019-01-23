db.collection.find({field: 'value'}, {firstName: true, lastName:false});
db.collection.find({"address.city": "value"})
db.collection.find({field: {$gt: 30, $lt: 90}});// > $gt maggiore AND  < $lt minore
db.collection.find({field: {$regex: 'ston'}}); //  regular expression   /pattern/
db.collection.find({field: {$exists : true}} )
db.collection.find({$or: [  {field: "value"}, {field: "value"}  ]  })

// sorting
db.collection.find( null, {field: 1})
db.collection.find( null, {field: 1 , _id:0} ) // muestra solo el campo
db.collection.find().sort({edad : 1})  //ordine crescente
db.collection.find().sort({edad : -1}) //ordine decrescente
db.collection.find().limit(3)
db.collection.find().limit(3).skip(2)
db.collection.find().count()
db.collection.count({edad: {$gte: 6}} ) // cuenta >= maggiore o uguale


db.collection.find().forEach(function(doc) {
  print("Customer Name" + doc.firstName);
});



db.collection.insert( {field: 'valor'} )
db.collection.insert({  firstName: 'Isaac',  lastName: 'Asimov' })
db.collection.insert( [ {firstName: 'Joe', lastName: 'MacMillan'}, {firstName: 'Elena', lastName: 'Soraya'}  ])


// replace or update data
db.collection.update(  <query>,               <update>, <Parameter>);
db.collection.update(  {field: ”value”},      {campo2 : “newdata”}    ) // replace or update data
db.collection.update(  { },                   {$set:   { field:  'newdata'}},  { multi: true } ) // all
db.collection.update(  {field: 'value'},      {$unset: { age: 1}},             { multi: true }) //cancel campo
db.collection.update(  {field: 'value'},      {$rename:{ field:  'newdata' }})
db.collection.update(  {field: 'value'},      {field: 'newdata'},              { upsert: true})
db.collection.update(  { },                   {$inc:   { age: 1  }}, false , true) // all 
db.collection.update(  {field: 'value'},      {$inc:   { age: 1  }}) // incrementar 1
db.collection.update(  {field: 'value'},      {$inc:   { age: -1 }})  // decrementar 1



db.collection.remove(  {field: 'value'} )
db.collection.remove(  {field: 'value'}, {justOne: true} )