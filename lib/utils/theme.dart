import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.C_121212,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.C_121212,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.C_121212,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      //display
      displayLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 57.sp,
          fontWeight: FontWeight.w800,
          fontFamily: "Lato"),
      displayMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 45.sp,
          fontWeight: FontWeight.w700,
          fontFamily: "Lato"),
      displaySmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 36.sp,
          fontWeight: FontWeight.w600,
          fontFamily: "Lato"),
      //headline
      headlineLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          fontFamily: "Lato"),
      headlineMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 28.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
      headlineSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
          fontFamily: "Lato"),
      //title
      titleLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 22.sp,
          fontWeight: FontWeight.w700,
          fontFamily: "Lato"),
      titleMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          fontFamily: "Lato"),
      titleSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
      //label
      labelLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          fontFamily: "Lato"),
      labelMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
      labelSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
      //body
      bodySmall: const TextStyle(
          color: AppColors.passiveTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
      bodyMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
      bodyLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato"),
    ),
  );
  static ThemeData lightTheme = ThemeData();
}