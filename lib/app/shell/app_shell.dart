import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import '../../routes/app_routes.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  final GoRouterState shellState;
  const AppShell({super.key, required this.child, required this.shellState});

  int _currentIndex() {
    final location = shellState.uri.toString(); // shellState.fullPath ?? shellState.matchedLocation
    if (location.startsWith('/about')) return 1;
    return 0;
  }

  String _currentTitle() {
    final location = shellState.uri.toString();

    return AppRoutes.titles.entries.firstWhere((e) => location.startsWith(e.key)).value;
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/gallery');
        break;
      case 1:
        context.go('/about');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentTitle()),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex(),
        onTap: (i) => _onItemTapped(context, i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}
