import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@Singleton()
class DatabaseProvider {
  static final DatabaseProvider databaseProvider = DatabaseProvider();

  Database? _database;

  Future<Database?> get database async {
    if(_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }

  createDatabase() async {
    var databasePath = await getDatabasesPath();
    var path = join(databasePath, 'secry.db');

    var database = await openDatabase(path, version: 1, onCreate: (Database db, int version) {
      // TODO: onCreate() run migrations
    });

    return database;
  }
}
