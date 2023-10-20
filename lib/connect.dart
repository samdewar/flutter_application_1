//
import 'package:mongo_dart/mongo_dart.dart';

import 'credentials.dart';
void main() async {
  // MongoDB Atlas connection details


  // Create a MongoDB connection pool
  Db db;

  db = await Db.create(connection);

  // Open the database connection
  await db.open();

  // Get a collection (replace 'your_collection_name' with your actual collection name)
  final collection = db.collection('your_collection_name');

  // Perform database operations
  var result = await collection.find(where.eq('key', 'value')).toList();
  print('Query Result: $result');

  // Close the database connection
  await db.close();
}
