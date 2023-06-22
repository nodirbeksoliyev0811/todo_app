import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up Screen",
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