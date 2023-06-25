import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class FocusScreen extends StatelessWidget {
  const FocusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Focus Mode",
            style: TextStyle(color: AppColors.white),
          ),
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