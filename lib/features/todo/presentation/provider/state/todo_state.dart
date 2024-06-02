import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';

class TodoPageState {
  const TodoPageState({
    required this.items,
    this.paginationInfo,
  });
  final List<TodoResponse> items;
  final PaginationInfo? paginationInfo;

  bool get hasMore => items.length < (paginationInfo?.total ?? 0);
}
