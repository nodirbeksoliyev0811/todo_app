import 'package:default_project/ui/app_routes.dart';
import 'package:default_project/ui/auth/widgets/global_button.dart';
import 'package:default_project/ui/auth/widgets/global_login_with_button.dart';
import 'package:default_project/ui/auth/widgets/global_or.dart';
import 'package:default_project/ui/auth/widgets/global_textfield.dart';
import 'package:default_project/utils/svges.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ZoomTapAnimation(
          onTap: () {
            Navigator.pushReplacementNamed(context, RouteNames.loginScreen);
          },
          child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: SvgPicture.asset(AppIcons.backArrow),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Expanded(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      tr("register"),
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    GetTextField(
                      onChanged: (v) {
                        setState(() {});
                      },
                      title: tr("username"),
                      hintText: tr("enter_your_Username"),
                      controller: _usernamecontroller,
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    GetTextField(
                      onChanged: (v) {
                        setState(() {});
                      },
                      title: tr("password"),
                      hintText: tr(
                        "enter_your_password",
                      ),
                      isPassword: true,
                      controller: _passwordcontroller,
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    GetTextField(
                      onChanged: (v) {
                        setState(() {});
                      },
                      title: tr("confirm_password"),
                      hintText: tr(
                        "confirm_your_password",
                      ),
                      isPassword: true,
                      controller: _confirmpasswordcontroller,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    ZoomTapAnimation(
                      onTap: () {
                        setState(() {});
                      },
                      child: GetGlobalButton(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, RouteNames.loginScreen);
                        },
                        text: tr("register"),
                        username: _usernamecontroller.text.isNotEmpty,
                        password: _passwordcontroller.text.isNotEmpty,
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    const GetOr(),
                    SizedBox(
                      height: 30.h,
                    ),
                    GetLoginWithButton(
                        text: tr("register_with_google"), img: AppIcons.google),
                    SizedBox(
                      height: 20.h,
                    ),
                    GetLoginWithButton(
                        text: tr("register_with_apple"), img: AppIcons.apple),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tr("already_have_an_account?"),
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: AppColors.C_979797,
                        fontWeight: FontWeight.w400),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RouteNames.loginScreen);
                    },
                    child: Text(
                      tr("login"),
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
