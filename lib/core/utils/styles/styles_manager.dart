import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
    {required double fontSize,
    double? fontHeight,
    required FontWeight fontWeight,
    required Color color}) {
  return TextStyle(
      height: fontHeight,
      fontSize: fontSize,
      fontFamily: 'Almarai',
      color: color,
      fontWeight: fontWeight);
}

// light style 300
TextStyle getLightStyle({Color? color, double? fontHeight, double? fontSize}) {
  return _getTextStyle(
      color: color ?? ColorManager.blackFont,
      fontWeight: FontWeightManager.light,
      fontSize: fontSize ?? FontSize.s16,
      fontHeight: fontHeight);
}

// regular style 400
TextStyle getRegularStyle(
    {Color? color, double? fontHeight, double? fontSize}) {
  return _getTextStyle(
      color: color ?? ColorManager.blackFont,
      fontWeight: FontWeightManager.regular,
      fontSize: fontSize ?? FontSize.s14,
      fontHeight: fontHeight);
}
// bold style 700
TextStyle getBoldStyle({Color? color, double? fontHeight, double? fontSize}) {
  return _getTextStyle(
      color: color ?? ColorManager.blackFont,
      fontWeight: FontWeightManager.bold,
      fontSize: fontSize ?? FontSize.s24,
      fontHeight: fontHeight);
}

// Extra Bold style 800
TextStyle getExtraStyle({Color? color, double? fontHeight, double? fontSize}) {
  return _getTextStyle(
      color: color ?? ColorManager.blackFont,
      fontWeight: FontWeightManager.extraBold,
      fontSize: fontSize ?? FontSize.s14,
      fontHeight: fontHeight);
}
