// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../features/app_map/data/repository/app_map_repository_impl.dart'
    as _i13;
import '../../features/app_map/data/source/app_map_remote_source.dart' as _i10;
import '../../features/app_map/domain/repository/app_map_repository.dart'
    as _i12;
import '../../features/app_map/domain/usecase/app_map_usecase.dart' as _i16;
import '../../features/todo/data/repository/todo_repository_impl.dart' as _i15;
import '../../features/todo/data/source/local/todo_database_helper.dart' as _i5;
import '../../features/todo/data/source/local/todo_local_source.dart' as _i9;
import '../../features/todo/data/source/todo_remote_source.dart' as _i11;
import '../../features/todo/domain/repository/todo_repository.dart' as _i14;
import '../../features/todo/domain/usecase/get_todo_count_usecase.dart' as _i17;
import '../../features/todo/domain/usecase/get_todo_usecase.dart' as _i19;
import '../../features/todo/domain/usecase/todo_usecase.dart' as _i18;
import '../config/environment_helper.dart' as _i3;
import '../dio_provider/dio_api_client.dart' as _i8;
import 'dependency_injection.dart' as _i20;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.EnvironmentHelper>(() => _i3.EnvironmentHelper());
    gh.factoryAsync<_i4.SharedPreferences>(() => registerModule.prefs);
    gh.factory<_i5.TodoDatabaseHelper>(() => _i5.TodoDatabaseHelper());
    gh.singleton<_i6.Dio>(() => registerModule.dio);
    gh.singleton<_i7.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i8.DioApiClient>(() => _i8.DioApiClient(gh<_i6.Dio>()));
    gh.factory<_i9.TodoLocalSource>(
        () => _i9.TodoLocalSource(gh<_i5.TodoDatabaseHelper>()));
    gh.factory<_i10.AppMapRemoteSource>(
        () => _i10.AppMapRemoteSource(gh<_i8.DioApiClient>()));
    gh.factory<_i11.TodoRemoteSource>(() => _i11.TodoRemoteSource(
          gh<_i8.DioApiClient>(),
          gh<_i5.TodoDatabaseHelper>(),
        ));
    gh.factory<_i12.AppMapRepository>(
        () => _i13.AppMapRepositoryImpl(gh<_i10.AppMapRemoteSource>()));
    gh.factory<_i14.TodoRepository>(() => _i15.TodoRepositoryImpl(
          gh<_i11.TodoRemoteSource>(),
          gh<_i9.TodoLocalSource>(),
        ));
    gh.factory<_i16.GetMapDataUsecase>(
        () => _i16.GetMapDataUsecase(gh<_i12.AppMapRepository>()));
    gh.factory<_i17.GetTodoCountUsecase>(
        () => _i17.GetTodoCountUsecase(gh<_i14.TodoRepository>()));
    gh.factory<_i18.SetTodoUsecase>(
        () => _i18.SetTodoUsecase(gh<_i14.TodoRepository>()));
    gh.factory<_i19.GetTodoUsecase>(
        () => _i19.GetTodoUsecase(gh<_i14.TodoRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
