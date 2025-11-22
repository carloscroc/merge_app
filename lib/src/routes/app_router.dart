import 'package:flutter/cupertino.dart';
import '../features/home/presentation/pages/home_screen.dart';
import '../features/profile/presentation/pages/profile_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/profile':
        return CupertinoPageRoute(builder: (_) => const ProfileScreen());
      case '/':
      default:
        return CupertinoPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
