import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_constant.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    primaryColor: AppConstant.primaryColor,
    iconTheme: const IconThemeData(
      color: AppConstant.titlecolor,
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
        color: AppConstant.titlecolor,
      ),
      backgroundColor: AppConstant.backgroundColor,
      iconTheme: IconThemeData(
        color: AppConstant.titlecolor,
        size: 16.h,
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppConstant.backgroundColor,
    cardColor: AppConstant.titlecolor,
    unselectedWidgetColor: Colors.black45,
    dividerColor: AppConstant.titlecolor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(
        color: AppConstant.titlecolor,
        fontSize: 32.sp,
      ),
      displayMedium: GoogleFonts.montserrat(
        color: AppConstant.titlecolor,
        fontSize: 24.sp,
      ),
      displaySmall: GoogleFonts.montserrat(
        color: AppConstant.titlecolor,
        fontSize: 18.sp,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: AppConstant.titlecolor,
        fontSize: 15.sp,
      ),
      headlineSmall: GoogleFonts.montserrat(
        color: AppConstant.titlecolor,
        fontSize: 12.sp,
      ),
      titleLarge: GoogleFonts.montserrat(
        color: AppConstant.titlecolor,
        fontSize: 9.sp,
      ),
      titleMedium: GoogleFonts.montserrat(
        color: AppConstant.subtitlecolor,
        fontSize: 12.sp,
      ),
      titleSmall: GoogleFonts.montserrat(
        color: AppConstant.subtitlecolor,
        fontSize: 9.sp,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      background: AppConstant.backgroundColor,
    ),
  );
}
