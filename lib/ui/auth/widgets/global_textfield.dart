import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../local/storage_repository.dart';
import '../../../utils/colors.dart';

class GetTextField extends StatelessWidget {
  const GetTextField({Key? key,this.isPassword=false, required this.title, required this.hintText, required this.controller,}) : super(key: key);
  final String title;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextField(
          controller: controller,
          obscureText: isPassword,
          cursorColor: AppColors.white,
          keyboardType: TextInputType.name,
          style: Theme.of(context).textTheme.titleMedium,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.C_535353),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(width: 0.8,color: AppColors.C_979797)
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(width: 0.8,color: AppColors.C_979797)
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(width: 0.8,color: AppColors.C_979797)
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(width: 0.8,color: AppColors.C_979797)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(width: 0.8,color: AppColors.C_979797)
            ),

          ),
        )
      ],
    );
  }
}