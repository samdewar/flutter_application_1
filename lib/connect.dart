//
import 'package:mongo_dart/mongo_dart.dart';

import 'credentials.dart';
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
        .find({'name': 'Horto flat with small garden'}).toList();
    // print(result);
    data = result;
  // Close the database connection
    await db.close();

  }

  var data;
    
}