import 'package:flutterbloctemplate/routes/app_routes.dart';
import 'package:flutterbloctemplate/views/screens/authentication/authentication_screen.dart';
import 'package:flutterbloctemplate/views/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.auth:
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
