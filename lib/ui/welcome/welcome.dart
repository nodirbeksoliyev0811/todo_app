import 'package:default_project/ui/on_boarding/on_boarding_1.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToBoardingScreen(context);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
          child: SizedBox(
            height: height * (60 / 812),
            width: height * (188 / 812),
            child: Image.asset(AppImages.logoName),
          )
      ),
    );
  }
  void _navigateToBoardingScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 1),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const OnBoardingScreen1();
            },
          )
      );
    });
  }
}