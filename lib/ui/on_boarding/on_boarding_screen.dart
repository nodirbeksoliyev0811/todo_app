import 'package:default_project/ui/app_routes.dart';
import 'package:default_project/ui/on_boarding/wdigets/page_view_index_img.dart';
import 'package:default_project/ui/on_boarding/wdigets/pageview_items.dart';
import 'package:default_project/utils/images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int pageIndex = 0;
  final PageController pageController = PageController();

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
        title: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 20.h),
          child: ZoomTapAnimation(
            onTap: () {
              Navigator.pushReplacementNamed(context, RouteNames.loginScreen);
            },
            child: Text(
              tr("skip"),
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16.sp,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 2.h),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                    });

                  },
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    PageViewItems(title: tr("manage_your_tasks"), text: tr("on_boarding_text1"), img: AppImages.onBoarding1,),
                    PageViewItems(title:tr("create_daily_routine"), text: tr("on_boarding_text2"),img: AppImages.onBoarding2,),
                    PageViewItems(title: tr("organize_your_tasks"), text: tr("on_boarding_text3"),img: AppImages.onBoarding3,),
                  ],
                ),
                PageIndexItem(activePageIndex: pageIndex),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 24.w,
              bottom: 62.h,
            ),
            child: Row(
              children: [
                ZoomTapAnimation(
                  onTap: () {
                    if (pageIndex > 0) {
                      pageIndex--;
                      setState(() {
                        pageController.animateToPage(
                          pageIndex,
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceOut,
                        );
                      });
                    }
                  },
                  child: Container(
                    height: 48.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Center(
                      child: Text(
                        pageIndex != 0 ? tr("back") : "",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16.sp,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                ZoomTapAnimation(
                  onTap: () {
                    if (pageIndex < 2) {
                      pageIndex++;
                      setState(() {
                        pageController.animateToPage(
                          pageIndex,
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceOut,
                        );
                      });
                    } else {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteNames.loginScreen,
                      );
                    }
                  },
                  child: Container(
                    height: 48.h,
                    width: pageIndex != 2 ? 90.w : 150.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: AppColors.C_8875FF,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Center(
                      child: Text(
                        pageIndex != 2 ? tr("next") : tr("get_started"),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
