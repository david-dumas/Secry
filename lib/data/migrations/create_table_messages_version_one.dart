import 'package:secry/data/migrations/migration.dart';
import 'package:sqflite/sqflite.dart';

class CreateTableMessageV1 extends Migration {
  CreateTableMessageV1(Batch batch) : super(batch: batch);

  @override
  void createTable() {
    batch.execute('DROP TABLE IF EXISTS Message');
    batch.execute('''CREATE TABLE Message (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
    )''');
  }
}