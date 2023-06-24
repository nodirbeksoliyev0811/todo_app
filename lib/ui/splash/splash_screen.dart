import 'package:default_project/ui/app_routes.dart';
import 'package:default_project/utils/svges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToWelcomeScreen(context);
    return Scaffold(
      backgroundColor: AppColors.C_121212,
      appBar: AppBar(
        backgroundColor: AppColors.C_121212,
        toolbarHeight: 0.h,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                SvgPicture.asset(AppIcons.logo,height: 113.h,width: 113.w,),
                SizedBox(height: 19.h,),
                Text("UpTodo",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40.sp,fontFamily: "Lato",color: AppColors.white),),

              ],
            ),
          )

        ],
      ),
    );
  }
  void _navigateToWelcomeScreen(BuildContext context) async{
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, RouteNames.onBoardingScreen);
    });
  }
}