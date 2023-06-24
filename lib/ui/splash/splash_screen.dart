import 'package:default_project/ui/app_routes.dart';
import 'package:default_project/utils/svges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _init() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, RouteNames.loginScreen);
      },
    );
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset(AppIcons.logo)),
          Text(
            "UpTodo",
            style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
