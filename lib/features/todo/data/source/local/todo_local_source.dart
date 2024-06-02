import 'package:injectable/injectable.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';
import 'package:project_init/features/todo/data/source/local/todo_database_helper.dart';

@injectable
class TodoLocalSource {
  TodoLocalSource(
    this._todoDatabaseHelper,
  );
  final TodoDatabaseHelper _todoDatabaseHelper;

  Future<List<TodoResponse>> getTodos({int page = 1}) async {
    final todos = await _todoDatabaseHelper.getTodos(page: page);
    return todos;
  }

  Future<int> getTotalCount() async {
    return _todoDatabaseHelper.getTotalTodoCount();
  }
}
