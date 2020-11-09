db.getCollection('students').find({id:3})

db.getCollection('students').find({id:6})

db.getCollection('students').find({id:1},{name:1,city:1,_id:0})

db.getCollection('students').find({id:2},{name:1,_id:0})

db.getCollection('students').find({city:'paris'},{_id:0})

db.getCollection('students').find({city:'lyon'},{name:1,_id:0})