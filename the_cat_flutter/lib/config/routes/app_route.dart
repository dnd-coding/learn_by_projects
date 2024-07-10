import 'package:flutter/material.dart';
import 'package:the_cat_flutter/features/home/presentation/pages/home_screen.dart';
import 'package:the_cat_flutter/features/login/presentation/pages/login_screen.dart';
import 'package:the_cat_flutter/features/splash/presentation/pages/splash_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}