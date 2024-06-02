import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/features/app_map/data/model/source_response.dart';
import 'package:project_init/features/app_map/data/source/app_map_remote_source.dart';
import 'package:project_init/features/app_map/domain/repository/app_map_repository.dart';

@Injectable(as: AppMapRepository)
class AppMapRepositoryImpl extends AppMapRepository {
  AppMapRepositoryImpl(this._remoteSource);
  final AppMapRemoteSource _remoteSource;
  @override
  Future<Either<AppError, ApiResponseForList<SourceResponse>>>
      getSources() async {
    try {
      final result = await _remoteSource.fetchData();
      return right(result);
    } catch (e) {
      if (e is ApiErrorResponse) {
        return left(ApiErrorResponse(message: e.message));
      } else {
        return left(const InternalAppError());
      }
    }
  }
}
