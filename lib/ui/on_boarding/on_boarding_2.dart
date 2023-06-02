import 'package:default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                child: PageView(
                  children: [
                    PageContent(
                      imagePath: AppImages.boardingImage2,
                      title: "Spare Is Easy & Secure",
                      height: height,
                      subtitle: "spare is easy to use and all your\n       transactions are secured",
                    ),
                  ],
                )
            ),
            SizedBox(height: height * (58 / 812)),
          ],
        ));
  }
// void _navigateToWelcomeScreen(BuildContext context) async {
//   Future.delayed(const Duration(seconds: 2),(){
//     Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (BuildContext context) {
//             return const WelcomeScreen();
//           },
//         )
//     );
//   });
// }
}
