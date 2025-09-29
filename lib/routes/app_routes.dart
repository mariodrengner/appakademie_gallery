class AppRoute {
  final String path;
  final String title;

  const AppRoute(this.path, this.title);
}

class AppRoutes {
  static const gallery = AppRoute('/gallery', 'Galerie');
  static const about = AppRoute('/about', 'Über mich');

  static final Map<String, String> titles = {
    gallery.path: gallery.title,
    about.path: about.title,
  };
}
