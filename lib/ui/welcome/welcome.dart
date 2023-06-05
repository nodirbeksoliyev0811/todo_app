import 'package:default_project/ui/auth/login/login_screen.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // _navigateToBoardingScreen(context);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.c416F71,
      appBar: AppBar(
        backgroundColor: AppColors.c416F71,
        title: Row(
          children: [
            Text(
              "Spedah",
              style: TextStyle(
                  fontSize: height * 24 / 812,
                  fontFamily: "Sora",
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              width: height * 4 / 812,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 7 / 812),
              height: height * 10 / 812,
              width: height * 10 / 812,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.yellow),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: height * 340 / 812,
                  width: height * 340 / 812,
                  margin: EdgeInsets.only(left: height * 201 / 812),
                  child: Image.asset(AppImages.circle)),
              Container(
                margin: EdgeInsets.only(left: height * 150 / 812),
                height: height * (364 / 812),
                width: height * (455 / 812),
                child: Image.asset(AppImages.bicycle),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                left: height * (28 / 812), right: height * (73 / 812)),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Let’s\nget started",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Sora",
                    color: Colors.white),
              ),
            ),
          ),
          Align(
              alignment:Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top:height * (24 / 812),left: height * (28 / 812),right: height * (28 / 812)),
                child: const Text("Everything start from here",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontFamily: "Sora",fontWeight: FontWeight.w400,fontSize: 16),
                ),
              )
          ),
          Container(
            margin: EdgeInsets.only(top:height * (48 / 812),left: height * (28 / 812),right: height * (28 / 812)),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.cFFCA42
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginScreen();
                      },
                    )
                );
              },
              child: const Center(
                child: Text("Log in",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.c10405A
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
