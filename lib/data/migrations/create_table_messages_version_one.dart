import 'package:secry/data/migrations/migration.dart';
import 'package:sqflite/sqflite.dart';

class CreateTableMessageV1 extends Migration {
  CreateTableMessageV1(Batch batch) : super(batch: batch);

  @override
  void createTable() {
    batch.execute('DROP TABLE IF EXISTS Message');
    batch.execute('''CREATE TABLE Message (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      group_id TEXT NOT NULL,
      custom_text TEXT,
      sender VARCHAR(255),
      sender_jid VARCHAR(255),
      time VARCHAR(255),
      message_id VARCHAR(255),
      type VARCHAR(255),
      body TEXT,
      msg_type VARCHAR(255),
      bubble_type VARCHAR(255),
      media_url VARCHAR(255),
      is_read_sent INTEGER
    )''');
  }
}