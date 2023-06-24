import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calendar Screen",
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
