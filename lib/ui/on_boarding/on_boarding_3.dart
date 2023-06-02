import 'package:default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

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
                      imagePath: AppImages.boardingImage3,
                      title: "Send Money With Spare",
                      height: height,
                      subtitle: "Transfer money easily to friends\n   and families on your contact\n               list using spare ",
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
