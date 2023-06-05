import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/colors.dart';

class InputBar extends StatelessWidget {
  const InputBar({Key? key,required this.title, required this.prefixIcons, this.suffixIcons='', this.isPassword=false}) : super(key: key);
  final String title;
  final String prefixIcons;
  final String suffixIcons;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * (60 / 812),
      margin: EdgeInsets.only(
          top: height * (24 / 812),
          left: height * (28 / 812),
          right: height * (28 / 812)),
      child: TextField(
        obscureText: isPassword,
          textInputAction: TextInputAction.done,
          cursorColor: AppColors.white,
          cursorHeight: 20,
          cursorWidth: 1.5,
          keyboardType: TextInputType.name,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.black
          ),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(width*23/812),
              child: SvgPicture.asset(prefixIcons),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(width*23/812),
              child: SvgPicture.asset(suffixIcons),
            ),
            hintText: title,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.c1F5460,
                fontFamily: "Sora"),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  width: 4,
                  color: AppColors.c879EA4,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                    width: 3, color: AppColors.c87898E)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                width: 10,
                color: AppColors.c10405A,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.white,
              ),
            ),

          )),
    );
  }
}
