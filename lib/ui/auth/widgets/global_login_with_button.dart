import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';
import '../../../utils/svges.dart';

class GetLoginWithButton extends StatelessWidget {
  const GetLoginWithButton({super.key, required this.text, required this.img});
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: (){},
      child: Container(
        width: 327.w,
        height: 48.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(width: 1.w, color: AppColors.C_8875FF),
            color: Colors.transparent),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(img),
            SizedBox(width: 10.w,),
            Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}
