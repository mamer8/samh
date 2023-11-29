import 'package:samh_task/core/widgets/custom_appbar.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../core/utils/cupertino_icons.dart';
import 'custom_appbar_column.dart';
import 'custom_appbar_text.dart';

class CustomResultAppBar extends StatelessWidget {
  const CustomResultAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
    builder: (context, state) {
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
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.keyboard_backspace,
                          color: ColorManager.primaryBackground,
                        )),
                    Text(
                      AppStrings.searchResults(context),
                      style: getBoldStyle(
                        color: ColorManager.primaryBackground,
                      ),
                    ),
                    SizedBox(
                      width: kPadding,
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppBarColumn(short: cubit.fromShort, text: cubit.from),
                  SizedBox(
                      height: 50.w,
                      width: MediaQuery.sizeOf(context).width / 3,
                      child: HomeCubit.get(context).isEnglish
                          ? AppImages.whitePlane
                          : AppImages.whitePlaneAR),
                  CustomAppBarColumn(short: cubit.toShort, text: cubit.to),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppBarText(
                    text: cubit.flightType,
                  ),
                  CustomAppBarText(
                    text: cubit.departure,
                  ),
                  CustomAppBarText(
                    text: cubit.passengerType,
                  ),
                ],
              ),
            ),
          ],
        ),
      );}
    );
  }
}
