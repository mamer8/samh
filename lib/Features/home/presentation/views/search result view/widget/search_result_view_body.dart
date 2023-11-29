import 'package:flutter/services.dart';
import 'package:samh_task/Features/home/data/models/flights_response.dart';

import '../../../../../../core/app_export.dart';
import 'custom_available_flight_row.dart';
import 'custom_flight_container.dart';
import 'custom_result_appbar.dart';

class SearchResultViewBody extends StatelessWidget {
  const SearchResultViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = FlightsCubit.get(context);
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomResultAppBar(),
                    BlocConsumer<FlightsCubit, FlightsStates>(
                        listener: (context, state) {},
                        builder: (context, state) {
                        return Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kPadding),
                              child: ConditionalBuilder(
                                condition:cubit.flightResponse.data != null ,
                                fallback: (context) => const CustomLoadingIndicator(),
                                builder: (context) =>
                                 Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     CustomAvailableFlightRow(num: cubit.flightResponse.data!.length ),
                                    ListView.separated(
                                      physics: const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) =>

                                             CustomFlightContainer(data:cubit.flightResponse.data![index] ),
                                        separatorBuilder: (context, index) => SizedBox(height: kMargin,),
                                        itemCount: cubit.flightResponse.data!.length)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                  ],
                ),
              ),
            ])));
  }
}

