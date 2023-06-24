import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/svges.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

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
          Expanded(
            child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
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
                  ),
                  Column(
                    children: [
                      Image.asset(AppImages.onBoarding1,
                          height: 277.78.sp, width: 213.w),
                      SizedBox(height: 51.22.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.recPassive),
                          SizedBox(width: 2.w),
                          SvgPicture.asset(AppIcons.rec),
                          SizedBox(width: 2.w),
                          SvgPicture.asset(AppIcons.recPassive),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(AppImages.onBoarding1,
                          height: 277.78.sp, width: 213.w),
                      SizedBox(height: 51.22.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.recPassive),
                          SizedBox(width: 2.w),
                          SvgPicture.asset(AppIcons.recPassive),
                          SizedBox(width: 2.w),
                          SvgPicture.asset(AppIcons.rec),
                        ],
                      ),
                    ],
                  ),]
            ),
          ),
        ],
      ),
    );
  }
}