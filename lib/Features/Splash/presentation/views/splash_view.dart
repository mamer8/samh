import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/styles/color_manager.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
        statusBarColor:

        ColorManager.primaryBackground,
        statusBarIconBrightness:  Brightness.dark
        ,
    ),
    child:

      Scaffold(
      backgroundColor: ColorManager.primaryBackground,
      body: SplashViewBody(),
    ));
  }
}
