import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/routes.dart';
import 'package:project_init/extensions/string_extension.dart';

import 'package:project_init/features/common/app_scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primarylight,
              AppColors.primaryDark,
            ],
          ),
        ),
        child: Center(child: Image.asset(AppImages.naxaLogo))
            .animate(
              onComplete: (controller) =>
                  context.go(RouteNames.home.routePath()),
            )
            .slideY(
              begin: 1,
              duration: const Duration(milliseconds: 800),
              curve: Curves.decelerate,
              delay: const Duration(milliseconds: 300),
            )
            .then()
            .shakeY(curve: Curves.easeInOutCubicEmphasized),
      ),
    );
  }
}
