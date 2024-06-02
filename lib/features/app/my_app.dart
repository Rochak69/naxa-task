import 'package:flutter/material.dart';
import 'package:project_init/core/route/routes.dart';
import 'package:project_init/core/theme/app_theme.dart';
import 'package:project_init/utlis/helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppUtils.unfocusKeyboard(context),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
      ),
    );
  }
}
