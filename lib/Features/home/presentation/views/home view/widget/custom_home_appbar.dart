import '../../../../../../core/app_export.dart';
import '../../../../../../core/utils/cupertino_icons.dart';
import '../home_view.dart';
import '../../../../../../core/widgets/custom_appbar.dart';
import 'custom_flight_chooser.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this.onPressedMenu});
final void Function() onPressedMenu;
  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return CustomAppBar(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: kMargin),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: onPressedMenu,
                      icon: Icon(
                        kMenu,
                        color: ColorManager.primaryBackground,
                      )),
                  Text(
                    AppStrings.bookYourFlight(context),
                    style: getBoldStyle(
                      color: ColorManager.primaryBackground,
                    ),
                  ),
                  AppImages.profile,
                ]),
          ),
          CustomFlightTypeChooser()
        ],
      ),
    );
  }
}
