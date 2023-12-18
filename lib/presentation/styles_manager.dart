import 'dart:ui';

import 'package:buy/presentation/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: FontFamilyManager.montserrat,
      color: color);
}

//regular style
TextStyle getRegularStyle(double fontSize, Color color) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

//medium style
TextStyle getMediumStyle(
    {double fontSize = FontSizeManager.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

//light style
TextStyle getLightStyle(
    {double fontSize = FontSizeManager.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

//semi-bold style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSizeManager.s16, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

//bold style
TextStyle getBoldStyle(
    {double fontSize = FontSizeManager.s18, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
