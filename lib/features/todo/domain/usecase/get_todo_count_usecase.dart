import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/todo/domain/repository/todo_repository.dart';

@injectable
class GetTodoCountUsecase extends UseCase<int, NoParam> {
  GetTodoCountUsecase(this._repository);
  final TodoRepository _repository;

  @override
  Future<Either<AppError, int>> call(NoParam param) =>
      _repository.getTodoTotalCount();
}
