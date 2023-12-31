import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../text_theme.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;
  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor) {
    data = TextTheme(
      bodyMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 13, color: Colors.black),
      displaySmall: GoogleFonts.nunito(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Colors.black,
      ),
      displayLarge: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
      titleLarge: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      titleMedium:
          GoogleFonts.nunito(fontWeight: FontWeight.w400, color: Colors.black),
      headlineMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
    ).apply();
    fontFamily = GoogleFonts.poppins().fontFamily;
  }

  @override
  String? fontFamily;
}
