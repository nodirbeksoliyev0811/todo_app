import 'package:default_project/ui/auth/login/login_screen.dart';
import 'package:default_project/ui/auth/sign/sign_up_screen.dart';
import 'package:default_project/ui/on_boarding/on_boarding_screen.dart';
import 'package:default_project/ui/settings/settings_screen.dart';
import 'package:default_project/ui/splash/splash_screen.dart';
import 'package:default_project/ui/tab_boxs/home/home_screen.dart';
import 'package:default_project/ui/tab_boxs/profile/profile_screen.dart';
import 'package:default_project/ui/tab_boxs/tab_box_screen.dart';
import 'package:default_project/ui/tasks/task_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String homeScreen = "/home";
  static const String onBoardingScreen = "/onBoarding";
  static const String loginScreen = "/login";
  static const String signScreen = "/sign";
  static const String profileScreen = "/profile";
  static const String settingsScreen = "/settings";
  static const String taskScreen = "/task";
  static const String tabBoxScreen = "/tabBox";
  static const String splashScreen = "/";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RouteNames.signScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
      case RouteNames.profileScreen:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case RouteNames.settingsScreen:
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      case RouteNames.tabBoxScreen:
        return MaterialPageRoute(builder: (context) => const TabBoxScreen());
      case RouteNames.taskScreen:
        return MaterialPageRoute(builder: (context) => const TaskScreen());
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
