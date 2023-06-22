import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome Screen",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: const Column(
        children: [
          Text(""),
        ],
      ),
    );
  }
}
