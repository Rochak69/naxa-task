import 'package:dartz/dartz.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';

abstract class TodoRepository {
  Future<Either<AppError, void>> setTodo();
  Future<Either<AppError, List<TodoResponse>>> getTodo({int page = 1});
  Future<Either<AppError, int>> getTodoTotalCount();
}
