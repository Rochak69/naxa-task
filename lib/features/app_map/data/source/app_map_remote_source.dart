import 'package:injectable/injectable.dart';
import 'package:project_init/constants/app_endpoints.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/core/dio_provider/dio_api_client.dart';
import 'package:project_init/features/app_map/data/model/source_response.dart';

@injectable
class AppMapRemoteSource {
  const AppMapRemoteSource(this._client);
  final DioApiClient _client;

  Future<ApiResponseForList<SourceResponse>> fetchData() async {
    final response = await _client.httpGet<dynamic>(
      AppEndpoints.source,
    );
    return ApiResponseForList(
      data: (response['features'] as List<dynamic>)
          .map(
            (e) => SourceResponse.fromJson(e),
          )
          .toList(),
    );
  }
}
