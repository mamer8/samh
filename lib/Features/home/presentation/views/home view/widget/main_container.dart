
import '../../../../../../core/app_export.dart';
import 'adults_container.dart';
import 'children_container.dart';
import 'custom_passenger_chooser.dart';
import 'departure_container.dart';
import 'from_container.dart';
import 'to_container.dart';

class CustomHomeContainer extends StatefulWidget {
  const CustomHomeContainer({
    super.key,
  });

  @override
  State<CustomHomeContainer> createState() => _CustomHomeContainerState();
}

class _CustomHomeContainerState extends State<CustomHomeContainer> {


  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);


    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: kPadding),
      child: CustomDottedContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FromContainer(),
              ToContainer()
            ],
          ),
          DepartureContainer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AdultsContainer(),
              ChildrenContainer()
            ],
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: kPadding),
            child: Center(child: CustomPassengerTypeChooser()),
          )

        ],
      )),
    );
  }
}

