import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/todo/domain/repository/todo_repository.dart';

@injectable
class SetTodoUsecase extends UseCase<void, NoParam> {
  SetTodoUsecase(this._repository);
  final TodoRepository _repository;

  @override
  Future<Either<AppError, void>> call(NoParam param) => _repository.setTodo();
}
