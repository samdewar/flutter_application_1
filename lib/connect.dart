//
import 'package:mongo_dart/mongo_dart.dart';

void main() async {
  // MongoDB Atlas connection details
  final String dbName = 'your_database_name';
  final String username = 'your_username';
  final String password = 'your_password';
  final String clusterUrl = 'your_cluster_url';

  // Create a MongoDB connection pool
  final db = Db('mongodb+srv://$username:$password@$clusterUrl/$dbName');

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
