import '../../../../../../core/app_export.dart';

class FlightDetailsRow extends StatelessWidget {
  const FlightDetailsRow({
    super.key, required this.inString, required this.hr, required this.min, required this.stop,
  });
final String inString ;
final String hr ;
final String min ;
final String stop ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${AppStrings.inString(context)} $inString',
          style: getBoldStyle(color: ColorManager.primary,
              fontSize: FontSize.s13
          ),
        ),
        Text(
          '$hr${AppStrings.hr(context)} $min${AppStrings.min(context)}',
          style: getBoldStyle(color: ColorManager.primary,
              fontSize: FontSize.s13
          ),
        ),
        Text(
          '$stop ${AppStrings.stops(context)}',
          style: getBoldStyle(color: ColorManager.primaryGrey,
              fontSize: FontSize.s13
          ),
        ),
      ],
    );
  }
}
