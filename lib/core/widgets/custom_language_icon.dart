
import 'package:samh_task/Features/Splash/presentation/views/splash_view.dart';
import 'package:samh_task/core/app_export.dart';

import '../utils/cupertino_icons.dart';
import '../utils/function/show_toast.dart';

class ChangeLanguageIcon extends StatelessWidget {
  const ChangeLanguageIcon({

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>  BlocBuilder
    <HomeCubit,HomeStates>(
      builder: (context, state) =>

       InkWell(
            onTap: () {
              HomeCubit.get(context).changeLanguage();
              HomeCubit.get(context).clearHomeData();
              FlightsCubit.get(context).clearFlightsData();
              navigateAndReplace(context,const SplashView());
               showToast(
                   msg: AppStrings.languageMessage(context), state: ToastStates.loading);
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: kPadding, vertical: kMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(kLanguageIcon),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.languageChange(context),
                    style: getBoldStyle(fontSize: FontSize.s14),
                  ),
                ],
              ),
            )),
  );
}
