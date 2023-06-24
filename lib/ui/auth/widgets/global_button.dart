import 'package:default_project/local/storage_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class GetGlobalButton extends StatefulWidget {
  const GetGlobalButton({super.key, required this.text,this.username=false,this.password=false});
  final String text;
  final bool username;
  final bool password;


  @override
  State<GetGlobalButton> createState() => _GetGlobalButtonState();
}

class _GetGlobalButtonState extends State<GetGlobalButton> {


  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: (){
      },
      child: Container(
        height: 48.h,
        width: 327.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: widget.username?widget.password?AppColors.C_8687E7 :AppColors.C_8687E7.withOpacity(0.5):AppColors.C_8687E7.withOpacity(0.5),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.white.withOpacity(0.5),
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    )
    ;
  }
}





