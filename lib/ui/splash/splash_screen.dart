import 'package:default_project/ui/welcome/welcome.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    _navigateToSplashScreen(context);

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.c_407AFF,
      body: Center(
          child: SizedBox(
            height: height * (132 / 812),
            width: height * (96 / 812),
            child: Image.asset(AppImages.logo),
      )),
    );
  }

  void _navigateToSplashScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const WelcomeScreen();
            },
          )
      );
    });
  }
}
