import 'package:buy/presentation/color_manager.dart';
import 'package:buy/presentation/font_manager.dart';
import 'package:buy/presentation/styles_manager.dart';
import 'package:buy/presentation/value_manager.dart';
import 'package:flutter/material.dart';

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
          titleTextStyle: TextStyle(
              fontSize: FontSizeManager.s16,
              color: ColorManager.white,
              fontWeight: FontWeightManager.regular)),
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
              textStyle: TextStyle(
                  color: ColorManager.white, fontSize: FontSizeManager.s17),
              primary: ColorManager.primary)),
      //text theme
      textTheme: TextTheme(
        displayLarge: getLightStyle(
            color: ColorManager.white, fontSize: FontSizeManager.s22),
        //h1
        displayMedium: getSemiBoldStyle(
            color: ColorManager.f525252, fontSize: FontSizeManager.s16),
        //st1
        titleMedium: getMediumStyle(
            color: ColorManager.f9E9E9E, fontSize: FontSizeManager.s14),
        //caption
        bodySmall: getRegularStyle(color: ColorManager.f707070),
        //bt1
        bodyLarge: getRegularStyle(color: ColorManager.f737477),
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
