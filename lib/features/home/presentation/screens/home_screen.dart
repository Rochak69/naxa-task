import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(navigationShell.currentIndex == 0 ? 'TODO' : 'Map'),
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryYellow,
        selectedItemColor: AppColors.primaryDark,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Todo List'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Map box'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
