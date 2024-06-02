import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/todo/data/model/todo_response.dart';
import 'package:project_init/features/todo/domain/repository/todo_repository.dart';

class GetTodoParam {
  GetTodoParam({required this.page});
  int page;
}

@injectable
class GetTodoUsecase extends UseCase<List<TodoResponse>, GetTodoParam> {
  GetTodoUsecase(this._repository);
  final TodoRepository _repository;

  @override
  Future<Either<AppError, List<TodoResponse>>> call(GetTodoParam param) =>
      _repository.getTodo(page: param.page);
}
