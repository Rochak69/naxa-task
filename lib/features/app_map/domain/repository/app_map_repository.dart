import 'package:dartz/dartz.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/features/app_map/data/model/source_response.dart';

abstract class AppMapRepository {
  Future<Either<AppError, ApiResponseForList<SourceResponse>>> getSources();
}
