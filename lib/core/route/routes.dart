import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_init/extensions/string_extension.dart';
import 'package:project_init/features/app_map/presentation/screens/app_map_screen.dart';
import 'package:project_init/features/home/presentation/screens/home_screen.dart';
import 'package:project_init/features/splash/splash_screen.dart';
import 'package:project_init/features/todo/presentation/screens/todo_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.splashScreen,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          HomeScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RouteNames.home.routePath(),
              builder: (BuildContext context, GoRouterState state) =>
                  const TodoScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RouteNames.map.routePath(),
              builder: (BuildContext context, GoRouterState state) =>
                  const PlaceCircleBody(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class RouteNames {
  static const String splashScreen = 'splashScreen';
  static const String home = 'home';
  static const String todo = 'todo';
  static const String map = 'map';
}
