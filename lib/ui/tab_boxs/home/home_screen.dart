import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/images.dart';
import 'package:default_project/utils/svges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: ZoomTapAnimation(
              onTap: () {}, child: SvgPicture.asset(AppIcons.sort)),
          title: const Center(
            child: Text(
              "Home Page",
              style: TextStyle(color: AppColors.white),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: ZoomTapAnimation(
                onTap: () {},
                child: Image.asset(AppImages.profileImg,
                    height: 42.h, width: 42.h)),
          ),
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
