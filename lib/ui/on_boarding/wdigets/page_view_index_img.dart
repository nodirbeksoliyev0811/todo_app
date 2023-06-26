import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/svges.dart';

class PageIndexItem extends StatelessWidget {
  const PageIndexItem({super.key, required this.activePageIndex,});
  final int activePageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        activePageIndex == 0
            ? SvgPicture.asset(AppIcons.rec)
            : SvgPicture.asset(
          AppIcons.recPassive,
          color: Colors.white.withOpacity(0.2),
        ),
        SizedBox(width: 2.w),
        activePageIndex == 1
            ? SvgPicture.asset(AppIcons.rec)
            : SvgPicture.asset(
          AppIcons.recPassive,
          color: Colors.white.withOpacity(0.2),
        ),
        SizedBox(width: 2.w),
        activePageIndex == 2
            ? SvgPicture.asset(AppIcons.rec)
            : SvgPicture.asset(
          AppIcons.recPassive,
          color: Colors.white.withOpacity(0.2),
        ),
      ],
    );
  }
}
