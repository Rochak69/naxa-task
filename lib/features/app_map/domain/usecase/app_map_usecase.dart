import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/app_map/data/model/source_response.dart';
import 'package:project_init/features/app_map/domain/repository/app_map_repository.dart';

@injectable
class GetMapDataUsecase
    extends UseCase<ApiResponseForList<SourceResponse>, NoParam> {
  GetMapDataUsecase(this._repository);
  final AppMapRepository _repository;

  @override
  Future<Either<AppError, ApiResponseForList<SourceResponse>>> call(
    NoParam param,
  ) =>
      _repository.getSources();
}
