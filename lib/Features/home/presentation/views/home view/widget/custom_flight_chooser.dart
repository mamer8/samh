import '../../../../../../core/app_export.dart';
import 'custom_flight_type_widget.dart';

class CustomFlightTypeChooser extends StatelessWidget {
  const CustomFlightTypeChooser({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    List<String> flightTypes = [
      AppStrings.oneWay(context),
      AppStrings.roundTrip(context),
      AppStrings.multiCity(context),
    ];
    return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
      cubit.flightType =flightTypes[0];
      return SizedBox(
        height: 38,
        child: ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (index != cubit.currentFlightIndex) {
                    cubit.getFlightIndex(index);
                    cubit.flightType =flightTypes[index];
                  }
                },
                child: FlightType(
                  isSelected:
                  cubit.currentFlightIndex == index ? true : false,
                  text: flightTypes[index],
                )),
            separatorBuilder: (context, index) => const SizedBox(
              width: kPadding,
            ),
            itemCount: flightTypes.length),
      );
    });
  }
}
