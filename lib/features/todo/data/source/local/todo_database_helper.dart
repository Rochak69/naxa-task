import 'dart:async';
import 'dart:isolate';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class TodoDatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'todo_database.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE todos(
        id INTEGER PRIMARY KEY,
        todo TEXT,
        completed INTEGER,
        userId INTEGER
      )
    ''');
  }

  Future<void> insertTodoList(List<TodoResponse> todos) async {
    final db = await database;

    var batch = db.batch();
    for (final todo in todos) {
      batch.insert(
        'todos',
        todo.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    await batch.commit(noResult: true);
  }

  Future<List<TodoResponse>> getTodos({int page = 1}) async {
    const limit = 15;
    final skip = (page - 1) * limit;
    final db = await database;
    final List<Map<String, dynamic>> maps =
        await db.query('todos', limit: limit, offset: skip);

    return Isolate.run(
      () => List.generate(
        maps.length,
        (i) => TodoResponse.fromJson(maps[i]),
      ),
    );
  }

  Future<int> getTotalTodoCount() async {
    final db = await database;

    final count =
        Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM todos'));
    return count ?? 0;
  }

  Future<void> clearAllTodos() async {
    final db = await database;
    await db.delete('todos');
  }
}
