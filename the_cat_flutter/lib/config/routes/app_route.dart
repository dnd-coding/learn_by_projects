import 'package:flutter/material.dart';
import 'package:the_cat_flutter/features/login/presentation/pages/login_screen.dart';
import 'package:the_cat_flutter/features/splash/pages/splash_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}