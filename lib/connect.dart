//
import 'package:mongo_dart/mongo_dart.dart';
import 'credentials.dart';
import 'dart:convert';
import 'dart:io';

class connect {

  Future<void> query() async {
    // MongoDB Atlas connection details

    // Create a MongoDB connection pool
    // Db db;

    var db = await Db.create("$connection/sample_airbnb");

    // Open the database connection
    await db.open();

    // Get a collection (replace 'your_collection_name' with your actual collection name)

    var collection = await db.collection("listingsAndReviews");

    // Perform database operations
    var result = await collection
        .findOne({'name': 'Horto flat with small garden'});
    // print(result);
    // data = result;
    _handleJson(result);
  // Close the database connection
    await db.close();

  }

  Future<void> _handleJson(var input) async{
    // Map<String, dynamic> output = jsonDecode(input);
    String jsonData = input['name'];
    data=jsonData;
  }
  var data;
    
}