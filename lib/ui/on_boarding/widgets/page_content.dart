import 'package:default_project/ui/on_boarding/on_boarding_2.dart';
import 'package:default_project/ui/on_boarding/on_boarding_3.dart';
import 'package:default_project/ui/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class PageContent extends StatelessWidget {
  const PageContent(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.height,
      required this.subtitle})
      : super(key: key);
  final String imagePath;
  final String title;
  final String subtitle;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imagePath,
          height: height * 288 / 812,
          width: height * 300 / 812,
        ),
        SizedBox(height: height * (58 / 812)),
        Text(title,
            style: TextStyle(
              fontSize: height * (24 / 812),
              fontWeight: FontWeight.w600,
            )),
        SizedBox(height: height * (18 / 812)),
        Text(
          subtitle,
          style: TextStyle(
              fontSize: height * (14 / 812),
              fontWeight: FontWeight.w400,
              color: AppColors.c_87898E),
        ),
        SizedBox(height: height * (30 / 812)),
        imagePath=="assets/images/money.png"? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.linerDot),
            SizedBox(width: height*8/812,),
            SvgPicture.asset(AppImages.centerDot),
            SizedBox(width: height*8/812,),
            SvgPicture.asset(AppImages.centerDot),
          ],
        ) :
        imagePath=="assets/images/security.png"? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.centerDot),
            SizedBox(width: height*8/812,),
            SvgPicture.asset(AppImages.linerDot),
            SizedBox(width: height*8/812,),
            SvgPicture.asset(AppImages.centerDot),
          ],
        ) :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.centerDot),
            SizedBox(width: height*8/812,),
            SvgPicture.asset(AppImages.centerDot),
            SizedBox(width: height*8/812,),
            SvgPicture.asset(AppImages.linerDot),
          ],
        ),
        SizedBox(height: height * (108 / 812)),
        imagePath == "assets/images/money.png" ? ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingScreen2()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.c_407AFF),
            child: SizedBox(
              height: height*46/812,
              width: height*327/812,
              child: const Center(
                  child: Text("Get started", style:
                  TextStyle(
                    color: AppColors.white,
                ),
              )),
            )):
        imagePath == "assets/images/security.png" ? ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingScreen3()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.c_407AFF),
            child: SizedBox(
              height: height*46/812,
              width: height*327/812,
              child: const Center(
                  child: Text("Get started", style:
                  TextStyle(
                    color: AppColors.white,
                  ),
                  )),
            )):
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.c_407AFF),
            child: SizedBox(
              height: height*46/812,
              width: height*327/812,
              child: const Center(
                  child: Text("Get started", style:
                  TextStyle(
                    color: AppColors.white,
                  ),
                  )),
            ))
      ],
    );
  }
}
