import 'package:project_init/core/build_variants/app_env_enum.dart';

class AppConfiguration {
  const AppConfiguration({
    required this.baseUrl,
    required this.appEnvironment,
  });
  final String baseUrl;

  final AppEnvironment appEnvironment;

  static const development = AppConfiguration(
    baseUrl: 'https://dummyjson.com',
    appEnvironment: AppEnvironment.development,
  );

  static const production = AppConfiguration(
    baseUrl: 'https://dummyjson.com',
    appEnvironment: AppEnvironment.production,
  );
  static const staging = AppConfiguration(
    baseUrl: 'https://dummyjson.com',
    appEnvironment: AppEnvironment.staging,
  );
}
