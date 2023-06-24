import 'package:default_project/local/storage_repository.dart';
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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  late bool isEmptyUsername;
  late bool isEmptyPassword;

  Future<void> _init() async {
    isEmptyUsername = StorageRepository.getBool("username_empty");
    isEmptyPassword = StorageRepository.getBool("password_empty");
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.backArrow),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              tr("login"),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 52.h,
            ),
            GetTextField(
              onChanged: (v){
                setState(() {

                });
              },

              title: tr("username"),
              hintText: tr("enter_your_Username"),
              controller: _usernamecontroller,
            ),
            SizedBox(
              height: 26.h,
            ),
            GetTextField(
              onChanged: (v){
                setState(() {

                });
              },
              title: tr("password"),
              hintText: tr(
                "enter_your_password",
              ),
              isPassword: true,
              controller: _passwordcontroller,
            ),
            SizedBox(
              height: 70.h,
            ),
            GetGlobalButton(
              text: tr("login"),
              onTap: (){
                  Navigator.pushReplacementNamed(context, RouteNames.homeScreen);
              },
              username: _usernamecontroller.text.isNotEmpty,
              password: _passwordcontroller.text.isNotEmpty,
            ),
            SizedBox(
              height: 36.h,
            ),
            const GetOr(),
            SizedBox(
              height: 30.h,
            ),
            GetLoginWithButton(
                text: tr("login_with_Google"), img: AppIcons.google),
            SizedBox(
              height: 20.h,
            ),
            GetLoginWithButton(
                text: tr("login_with_Apple"), img: AppIcons.apple),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tr("don’t_have_an_account?"),
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColors.C_979797, fontWeight: FontWeight.w400),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RouteNames.signScreen);
                  },
                  child: Text(
                    tr("register"),
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
    );
  }
}
