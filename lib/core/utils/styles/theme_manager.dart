import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../function/material_color.dart';
import 'color_manager.dart';
import 'styles_manager.dart';
import 'font_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: buildMaterialColor(ColorManager.primary),
    scaffoldBackgroundColor: ColorManager.primaryBackground,





    textTheme: TextTheme(

        // bodyText2: getRegular400Style(
        //     color: ColorManager.primary, fontSize: FontSize.s14),

        headlineMedium: getRegularStyle(
            color: ColorManager.blackFont, fontSize: FontSize.s14),

        titleSmall: getRegularStyle(
            color: ColorManager.blackFont, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(
          color: ColorManager.blackFont,
        ),
        bodySmall: getRegularStyle(
          color: ColorManager.blackFont,
        ),
        bodyMedium: getRegularStyle(
            color: ColorManager.blackFont, fontSize: FontSize.s12),
        labelSmall:
            getBoldStyle(color: ColorManager.blackFont, fontSize: FontSize.s12)),



  );
}
