import 'package:default_project/ui/auth/login/widgets/input_widgets.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../login/login_screen.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      backgroundColor: AppColors.white,
      body: ListView(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: height * (3.5 / 812), left: height * (28 / 812)),
              child: const Text(
                "Create account",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Sora",
                    fontWeight: FontWeight.w600,
                    color: AppColors.c1F5460),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: height * (28 / 812),
                top: height * (5 / 812),
              ),
              child: const Text(
                "Sign up to get started!",
                style: TextStyle(
                  color: AppColors.c879EA4,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Sora",
                  fontSize: 16,
                ),
              ),
            ),
            const InputBar(title: "Email or username",prefixIcons: AppImages.user),
            const InputBar(title: "Email address",prefixIcons: AppImages.massage),
            const InputBar(title: "Password",prefixIcons: AppImages.lock,suffixIcons: AppImages.hideOrShow,isPassword: true),
            const InputBar(title: "Confirm password",prefixIcons: AppImages.lock,suffixIcons: AppImages.hideOrShow,isPassword: true,),
            Container(
              margin: EdgeInsets.only(
                  top: height * (24 / 812),
                  left: height * (28 / 812),
                  right: height * (28 / 812)),
              width: double.infinity,
              child: ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: AppColors.cFFCA42),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (BuildContext context) {
                  //     return const SingUpScreen();
                  //   },
                  // ));
                },
                child: const Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.c10405A),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: height * (16 / 812),
                  left: height * (28 / 812),
                  right: height * (28 / 812)),
              width: double.infinity,
              child: ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: AppColors.black),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (BuildContext context) {
                  //     return const LoginScreen();
                  //   },
                  // ));
                },
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      height:height*23/812,
                      width:height*23/812,
                      margin: EdgeInsets.only(right: height*10/812),
                      child: Image.asset(AppImages.apple),
                    ),
                    const Text(
                      "Sign up in using Apple",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: height * (16 / 812),
                  left: height * (28 / 812),
                  right: height * (28 / 812),
                  bottom: height * (18 / 812)
              ),
              width: double.infinity,
              child: ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: AppColors.cF0F5F2),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (BuildContext context) {
                  //     return const LoginScreen();
                  //   },
                  // ));
                },
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      height:height*23/812,
                      width:height*23/812,
                      margin: EdgeInsets.only(right: height*10/812),
                      child: Image.asset(AppImages.google),
                    ),
                    const Text(
                      "Sign up in using Google",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.c10405A),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                const Text(
                  "Already member?",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.c1F5460,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginScreen();
                      },
                    ));
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.c1F5460,
                    ),
                  ),
                ),
                const Spacer()
              ],
            ),
          ],
        ),]
      ),
    );
  }
}
