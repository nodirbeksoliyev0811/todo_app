import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';

class GetOr extends StatelessWidget {
  const GetOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1.h,
          width: 154.w,
          color: AppColors.C_979797,
        ),
        Text(tr("or"),style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.C_979797,fontWeight: FontWeight.w500),),
        Container(
          height: 1.h,
          width: 154.w,
          color: AppColors.C_979797,
        ),
      ],
    );
  }
}
