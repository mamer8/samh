import 'package:samh_task/core/utils/function/show_toast.dart';

import '../../../../../../core/app_export.dart';
import '../../../../../../core/widgets/custom_dotted_container.dart';
import '../../../../../../core/widgets/custom_appbar.dart';
import 'package:flutter/services.dart';

import '../../../../data/models/flights_response.dart';
import '../../search result view/search_result_view.dart';
import 'custom_home_appbar.dart';
import 'main_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key, required this.onPressedMenu}) : super(key: key);
  final void Function() onPressedMenu;
  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
            body: CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: true,
                    child: BlocConsumer<HomeCubit, HomeStates>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               CustomHomeAppBar(onPressedMenu:onPressedMenu ),
                              Expanded(
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: kPadding),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        CustomHomeContainer(),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2 * kPadding),
                                          child: CustomButton(
                                            text: AppStrings.searchFlights(
                                                context),
                                            onPressed: () {


                                              if (
                                              cubit.flightType ==
                                                  '' || cubit.from ==
                                                  '' || cubit.to ==
                                                  '' || cubit.adults ==
                                                  '' || cubit.children ==
                                                  '' || cubit.passengerType ==
                                                  '' || cubit.departure ==
                                                  '' ) {
                                                showToast(msg:AppStrings.enterFields(context) , state: ToastStates.error);
                                              }
                                              else{

                                                FlightsCubit.get(context).searchFlights();
                                                navigateTo(context, const SearchResultView());
                                              }
                                             
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2 * kPadding),
                                          child: Text(
                                            AppStrings.bestValueOffers(context),
                                            style: getBoldStyle(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ])));
  }
}
