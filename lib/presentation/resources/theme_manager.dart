import 'package:buy/presentation/resources/styles_manager.dart';
import 'package:buy/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
      //main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.f707070,
      //card theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.f525252,
          elevation: AppSize.s4),
      //appbare theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularStyle(
            fontSize: FontSizeManager.s16,
            color: ColorManager.white,
          )),
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.f707070,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppPadding.p12),
              ),
              textStyle: getRegularStyle(
                  color: ColorManager.white, fontSize: FontSizeManager.s17),
              primary: ColorManager.primary)),
      //text theme
      textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.f525252, fontSize: FontSizeManager.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.f525252, fontSize: FontSizeManager.s16),
        headlineMedium: getRegularStyle(
            color: ColorManager.f525252, fontSize: FontSizeManager.s14),
        titleMedium: getMediumStyle(
            color: ColorManager.primary, fontSize: FontSizeManager.s16),
        bodyLarge: getRegularStyle(color: ColorManager.f707070),
        bodySmall: getRegularStyle(color: ColorManager.f737477),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPadding.p8),
          hintStyle: getRegularStyle(
              color: ColorManager.f737477, fontSize: FontSizeManager.s14),
          labelStyle: getMediumStyle(
              color: ColorManager.f737477, fontSize: FontSizeManager.s14),
          errorStyle: getRegularStyle(color: ColorManager.fe61f34),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius: BorderRadius.circular(AppSize.s8)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.f737477, width: AppSize.s1_5),
              borderRadius: BorderRadius.circular(AppSize.s8)),
          errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.f737477, width: AppSize.s1_5),
              borderRadius: BorderRadius.circular(AppSize.s8)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius: BorderRadius.circular(AppSize.s8))));
}
