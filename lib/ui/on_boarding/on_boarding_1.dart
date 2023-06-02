import 'package:default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

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
                    imagePath: AppImages.boardingImage1,
                    title: "Spend & Save With Spare",
                    height: height,
                    subtitle: "With spare, you can for bills,\nfood, entertainment, utilities\n              and still save",
                  ),
                  ],
                )
            ),
            SizedBox(height: height * (58 / 812)),
          ],
        ));
  }
}
