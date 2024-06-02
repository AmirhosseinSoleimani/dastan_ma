import 'package:daastane_ma/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,

        primaryColor: ColorThemeManager.transparent,
        cardColor: ColorThemeManager.lightBlue,
        indicatorColor: ColorThemeManager.primary,

        colorScheme: ColorScheme(
          primary: ColorThemeManager.primary,
          onPrimary: ColorThemeManager.accent2,

          secondary: ColorThemeManager.greyStrong,
          onSecondary: ColorThemeManager.greyMedium,

          error: ColorThemeManager.redColor,
          onError: ColorThemeManager.lightRedColor,

          surface: ColorThemeManager.appBarColor,
          onSurface: ColorThemeManager.colorHoloGreyPrimary,

          brightness: Brightness.light,
        ),

        textTheme: TextTheme(
          headlineLarge: getBoldStyle(fontSize: AppSize.s24, color: ColorThemeManager.colorBlack),
          headlineMedium: getSemiBoldStyle(fontSize: AppSize.s24, color: ColorThemeManager.colorBlack),
          headlineSmall: getRegularStyle(fontSize: AppSize.s24, color: ColorThemeManager.colorBlack),

          titleLarge: getBoldStyle(fontSize: AppSize.s20, color: ColorThemeManager.colorBlack),
          titleMedium: getSemiBoldStyle(fontSize: AppSize.s20, color: ColorThemeManager.colorBlack),
          titleSmall: getRegularStyle(fontSize: AppSize.s20, color: ColorThemeManager.colorBlack),

          displayLarge: getBoldStyle(fontSize: AppSize.s18, color: ColorThemeManager.colorBlack),
          displayMedium: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorThemeManager.colorBlack),
          displaySmall: getRegularStyle(fontSize: AppSize.s18, color: ColorThemeManager.colorBlack),

          bodyLarge: getBoldStyle(fontSize: AppSize.s16, color: ColorThemeManager.colorBlack),
          bodyMedium: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorThemeManager.colorBlack),
          bodySmall: getRegularStyle(fontSize: AppSize.s16, color: ColorThemeManager.colorBlack),

          labelLarge: getBoldStyle(fontSize: AppSize.s12, color: ColorThemeManager.colorBlack),
          labelMedium: getSemiBoldStyle(fontSize: AppSize.s12, color: ColorThemeManager.colorBlack),
          labelSmall: getRegularStyle(fontSize: AppSize.s12, color: ColorThemeManager.colorBlack),
        ).apply(fontFamily: FontConstants.fontFamily)
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
    );
  }
}