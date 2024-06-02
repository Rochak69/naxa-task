import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_init/core/config/app_config.dart';
import 'package:project_init/core/dependency_injection/dependency_injection.dart';
import 'package:project_init/features/app/my_app.dart';

class AppEntryPoint {
  AppEntryPoint(AppConfiguration buildVariant) {
    envSettings = buildVariant;
    initializeStartUpDependenciesAndRun(envSettings);
  }
  static AppConfiguration? envSettings;

  static Future<void> initializeStartUpDependenciesAndRun(
    AppConfiguration? envSettings,
  ) async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();

    if (Platform.isAndroid) {
      unawaited(_setHighRefreshRate());
    }

    unawaited(
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),
    );

    runApp(const ProviderScope(child: MyApp()));
  }

  static Future<void> _setHighRefreshRate() async {
    try {
      await FlutterDisplayMode.setHighRefreshRate();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
