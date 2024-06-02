import 'dart:isolate';
import 'package:injectable/injectable.dart';
import 'package:project_init/constants/app_endpoints.dart';
import 'package:project_init/core/dio_provider/dio_api_client.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';
import 'package:project_init/features/todo/data/source/local/todo_database_helper.dart';

@injectable
class TodoRemoteSource {
  const TodoRemoteSource(this._client, this._databaseHelper);
  final DioApiClient _client;
  final TodoDatabaseHelper _databaseHelper;
  Future<void> setData() async {
    final param = <String, dynamic>{'limit': 300};

    final response = await _client.httpGet<dynamic>(
      AppEndpoints.todo,
      queryParameters: param,
    );
    final data = response['todos'] as List<dynamic>;
    final todos = await Isolate.run(
      () => data.map((e) {
        e['completed'] = e['completed'] == true ? 1 : 0;
        return TodoResponse.fromJson(e);
      }).toList(),
    );

    await _databaseHelper.insertTodoList(todos);
  }
}
