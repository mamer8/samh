import 'package:flutter/material.dart';
import 'package:samh_task/core/app_export.dart';
import 'custom_language_icon.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Drawer(


      child: Center(
        child: ListView(

          children: const [

             Padding(
               padding: EdgeInsets.symmetric(vertical: kPadding),
               child: ChangeLanguageIcon(),
             ),

          ],
        ),
      ),
    );
  }
}
