import 'package:default_project/ui/splash/splash_screen.dart';
import 'package:default_project/ui/welcome/welcome.dart';
import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class RouteNames {
  static const String homeScreen = "/home";
  static const String welcomeScreen = "/welcome";
  static const String splashScreen = "/";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteNames.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route not found!"),
            ),
          ),
        );
    }
  }
}
