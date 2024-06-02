import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';
import 'package:project_init/features/todo/data/source/local/todo_local_source.dart';
import 'package:project_init/features/todo/data/source/todo_remote_source.dart';
import 'package:project_init/features/todo/domain/repository/todo_repository.dart';

@Injectable(as: TodoRepository)
class TodoRepositoryImpl extends TodoRepository {
  TodoRepositoryImpl(this._remoteSource, this._localSource);
  final TodoRemoteSource _remoteSource;
  final TodoLocalSource _localSource;
  @override
  Future<Either<AppError, void>> setTodo() async {
    try {
      final result = await _remoteSource.setData();
      return right(result);
    } catch (e) {
      if (e is ApiErrorResponse) {
        return left(ApiErrorResponse(message: e.message));
      } else {
        return left(const InternalAppError());
      }
    }
  }

  @override
  Future<Either<AppError, int>> getTodoTotalCount() async {
    try {
      final result = await _localSource.getTotalCount();
      return right(result);
    } catch (e) {
      return left(const InternalAppError());
    }
  }

  @override
  Future<Either<AppError, List<TodoResponse>>> getTodo({int page = 1}) async {
    try {
      final result = await _localSource.getTodos(page: page);
      return right(result);
    } catch (e) {
      return left(const InternalAppError());
    }
  }
}
