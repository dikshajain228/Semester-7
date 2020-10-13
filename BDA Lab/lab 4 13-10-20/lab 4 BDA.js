use College
db.createCollection("books")
db.books.save({_id:1, category:"Machine Learning", bookname:"ML for Hackers",author: "Drew Convay", qty: 25, price:400, rol:30, pages:350})
db.books.save({_id:2, category:"Business Intelligence", bookname:"Fundamentals of BA",author: "Seema Acharya", qty: 55, price:500, rol:30, pages:250})
db.books.save({_id:3, category:"Anayltics", bookname:"Competing on Analytics",author: "Thomas Dwenporrt", qty: 8, price:150, rol:20, pages:150})
db.books.save({_id:4, category:"Visualization", bookname:"Visualising Data",author: "Ben Fry", qty: 12, price:325, rol:6, pages:450})
db.books.save({_id:5, category:"Web Mining", bookname:"Learning R",author: "Richard C", qty: 25, price:850, rol:10, pages:120})
db.books.find()
var mapFunction1 = function() {
    var category;
    if(this.pages>=300)
        category=" Big Books";
    else 
        category= "Small Books";
   emit(category, this.bookname);
};
var reduceFunction1 = function(category, Booknames) {
    return Booknames.length;
};
db.books.mapReduce(
   mapFunction1,
   reduceFunction1,
   { out: "map_reduce" }
)
db.map_reduce.find()

use test
//mongoimport -d test -c data --type csv --headerline --file "C:\Users\Dell\Desktop\college\lab\bank-data.csv"
db.data.find()
db.getCollection('MongoDBHandsOn').find({})
db.MongoDBHandsOn.aggregate([
    {
        $group : {
            _id : "summary",
            childrenTotal : { $sum : "$children"},
            average : {$avg : "$children"}
        }
    }
])

use College
db.createCollection("Country")
db.Country.insert({_id:1,Cities:["Bangalore","Pune"]})
db.Country.insert({_id:2,Cities:["Hyderabad","Mumbai","Delhi"]})
db.Country.insert({_id:3,Cities:["Ooty","Jamshedpur","Jodhpur"]})
db.Country.insert({_id:4,Cities:["Ooty","Jaipur","Kohima"]})
db.Country.find()
db.Country.update({_id:1},{$push:{population:{Bangalore:30,Chennai:45}}})
db.Country.find()
db.Country.update({_id:3},{$pop:{Cities:1}})
db.Country.find()
db.Country.update({Cities:"Hyderabad"},{$pull:{Cities:'Hyderabad'}})
db.Country.find()
db.Country.update({_id:1},{$set:{'Cities.2':'Srinagar'}})
db.Country.update({_id:2},{$addToSet:{Cities:"Trichi"}})
db.Country.find()   
db.Country.find().limit(1)
db.Country.find().skip(2).limit(2)