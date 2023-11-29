import 'package:samh_task/Features/home/data/models/flights_response.dart';

import '../../../../../../core/app_export.dart';
import 'custom_flight_details.dart';

class CustomFlightContainer extends StatelessWidget {
  const CustomFlightContainer({
    super.key,
    required this.data,
  });

  final FlightsData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2 * kPadding),
          child: CustomDottedContainer(
            child: Column(
              children: [
                FlightDetailsRow(
                    inString: data.inText!,
                    hr: data.hr!,
                    min: data.min!,
                    stop: data.stops!.toString()),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.start!,
                        style: getBoldStyle(color: ColorManager.primary),
                      ),
                      SizedBox(
                          height: 50.w,
                          width: MediaQuery.sizeOf(context).width / 3,
                          child: HomeCubit.get(context).isEnglish
                              ? AppImages.bluePlane
                              : AppImages.bluePlaneAR),
                      Text(
                        data.end!,
                        style: getBoldStyle(color: ColorManager.primary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kBookButtonPadding,
          ),
          child: CustomButton(
            text: '\$${data.price}  ${AppStrings.bookFlight(context)} ',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
