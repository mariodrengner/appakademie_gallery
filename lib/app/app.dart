import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/gallery/presentation/gallery_screen.dart';
import '../features/gallery/presentation/gallery_detail_screen.dart';
import '../features/about/presentation/about_screen.dart';
import 'shell/app_shell.dart';
import '../routes/app_routes.dart';

class App extends StatelessWidget {
  App({super.key});

  final _router = GoRouter(
    initialLocation: '/gallery',
    routes: [
      ShellRoute(
        builder: (context, state, child) => AppShell(shellState: state, child: child),
        routes: [
          GoRoute(
            path: AppRoutes.gallery.path,
            builder: (_, _) => const GalleryScreen(),
          ),
          GoRoute(path: AppRoutes.about.path, builder: (_, _) => const AboutScreen()),
        ],
      ),
      GoRoute(
        path: '/gallery/:id',
        builder: (_, state) => GalleryDetailScreen(imageId: state.pathParameters['id']!),
      ), // without AppShell (AppBar & BottomNavigationBar)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: _router);
  }
}
