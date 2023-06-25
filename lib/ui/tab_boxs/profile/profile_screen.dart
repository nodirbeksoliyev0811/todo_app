import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Profile",
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
