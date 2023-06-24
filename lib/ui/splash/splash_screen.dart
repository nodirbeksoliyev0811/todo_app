import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/svges.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int pageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_121212,
      appBar: AppBar(
        backgroundColor: AppColors.C_121212,
        elevation: 0,
        title: Text("SKIP",
            style: TextStyle(
                fontFamily: "Lato", fontSize: 16.sp, color: Colors.grey)),
      ),
      body: Column(
        children: [
          SizedBox(height: 2.h),
          Center(
              child: Column(
            children: [
              Image.asset(AppImages.onBoarding1,
              height: 277.78.sp, width: 213.w),
              SizedBox(height: 51.22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.rec),
                  SizedBox(width: 2.w),
                  SvgPicture.asset(AppIcons.recPassive),
                  SizedBox(width: 2.w),
                  SvgPicture.asset(AppIcons.recPassive),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
