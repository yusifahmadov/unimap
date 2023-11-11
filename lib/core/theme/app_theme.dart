import 'package:flutter/material.dart';
import 'package:unimap/core/constant/constants.dart';
import 'package:unimap/core/theme/text/app/dark_text.dart';
import 'package:unimap/core/theme/text/app/light_text.dart';

import 'colors/color_manager.dart';
import 'text/text_theme.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColors get colors;
}

abstract class ThemeManager {
  static ThemeData craeteTheme(ITheme theme) => ThemeData(
      useMaterial3: false,
      fontFamily: theme.textTheme.fontFamily,
      textTheme: theme.textTheme.data,
      scrollbarTheme: ScrollbarThemeData(
          interactive: true,
          thickness: MaterialStateProperty.all(8),
          trackColor: MaterialStateProperty.all(const Color(0xff103B59)),
          thumbColor: MaterialStateProperty.all(
              const Color(0xff103B59).withOpacity(0.5)),
          trackBorderColor: MaterialStateProperty.all(const Color(0xff103B59)),
          radius: const Radius.circular(0),
          thumbVisibility: MaterialStateProperty.all(true)),
      cardColor: theme.colors.colorScheme?.onSecondary,
      splashColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: theme.colors.colors.whiteAccentColor),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: theme.colors.fillColor,
          hintStyle: theme.textTheme.data.bodyMedium),
      tabBarTheme: TabBarTheme(
        indicator: const BoxDecoration(),
        labelColor: theme.colors.tabbarSelectedColor,
        unselectedLabelColor: theme.colors.tabbarNormalColor,
      ),
      checkboxTheme: CheckboxThemeData(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 1.0, color: Colors.grey),
          ),
          fillColor: const MaterialStatePropertyAll(appMainColor),
          checkColor: const MaterialStatePropertyAll(Colors.white)),
      dialogTheme:
          DialogTheme(backgroundColor: theme.colors.scaffoldBackgroundColor),
      dialogBackgroundColor: theme.colors.scaffoldBackgroundColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: theme.colors.colors.white,
          backgroundColor: theme.colors.colors.mediumGreyBold),
      appBarTheme: AppBarTheme(backgroundColor: theme.colors.appBarColor),
      scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
      bottomAppBarTheme:
          BottomAppBarTheme(color: theme.colors.scaffoldBackgroundColor),
      colorScheme:
          theme.colors.colorScheme?.copyWith(background: Colors.white));
}

class AppThemeDark extends ITheme {
  @override
  late final ITextTheme textTheme;
  AppThemeDark() {
    textTheme = TextThemeDark(colors.colors.mediumGrey);
  }

  @override
  IColors get colors => DarkColors();
}

class AppThemeLight extends ITheme {
  @override
  late final ITextTheme textTheme;

  AppThemeLight() {
    textTheme = TextThemeLight(colors.colors.mediumGrey);
  }

  @override
  IColors get colors => LightColors();
}
