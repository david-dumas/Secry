import 'package:injectable/injectable.dart';
import 'package:secry/data/migrations/create_table_messages_version_one.dart';
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

  Future onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  createDatabase() async {
    var databasePath = await getDatabasesPath();
    var path = join(databasePath, 'secry.db');

    var database = await openDatabase(
        path,
        version: 1,
        onConfigure: onConfigure,
        onCreate: (Database db, int version) async {
          var batch = db.batch();
          CreateTableMessageV1(batch).createTable();
          await batch.commit();
        },
        onUpgrade: (Database db, int oldVersion, int newVersion) async {
          var batch = db.batch();
          if (oldVersion == 1) {
            // TODO: Implement new migrations (when needed)
          }
          await batch.commit();
        }
    );

    return database;
  }
}
