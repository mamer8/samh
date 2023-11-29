import '../../../../../../core/app_export.dart';
import 'custom_passenger_type_widget.dart';

class CustomPassengerTypeChooser extends StatelessWidget {
  const CustomPassengerTypeChooser({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    List<String> passengerTypes = [
      AppStrings.economy(context),
      AppStrings.business(context),
      AppStrings.firstClass(context),
    ];
    return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
      cubit.passengerType =passengerTypes[0];
      return SizedBox(
        height: 45,
        child: ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (index != cubit.currentPassengerIndex) {
                    cubit.getPassengerIndex(index);
                    cubit.passengerType =passengerTypes[index];
                  }
                },
                child: PassengerType(
                  isSelected:
                  cubit.currentPassengerIndex == index ? true : false,
                  text: passengerTypes[index],
                )),
            separatorBuilder: (context, index) => const SizedBox(
              width: kPadding,
            ),
            itemCount: passengerTypes.length),
      );
    });
  }
}
