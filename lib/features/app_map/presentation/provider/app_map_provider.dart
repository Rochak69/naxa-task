import 'package:project_init/core/dependency_injection/dependency_injection.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/app_map/data/model/source_response.dart';
import 'package:project_init/features/app_map/domain/usecase/app_map_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_map_provider.g.dart';

@riverpod
class AppMap extends _$AppMap {
  @override
  Future<List<SourceResponse>?> build() async {
    final getMapDataUsecase = await sl<GetMapDataUsecase>().call(NoParam());
    return getMapDataUsecase.fold(
      (l) {
        state = AsyncError(l, StackTrace.current);
        return null;
      },
      (r) {
        return r.data ?? [];
      },
    );
  }
}
