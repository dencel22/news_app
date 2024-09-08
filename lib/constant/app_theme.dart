import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/constant/app_style.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: AppStyle.kWhite,
      ),
      scaffoldBackgroundColor: AppStyle.kLighterWhite,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
    );
  }
}
