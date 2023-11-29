import '../../../../../../core/app_export.dart';

class CustomAvailableFlightRow extends StatelessWidget {
  const CustomAvailableFlightRow({
    super.key, required this.num,
  });
final int num;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$num ${AppStrings.availableFlights(context)}',
            style: getRegularStyle(color: ColorManager.primaryGrey),
          ),
          AppImages.filter
        ],
      ),
    );
  }
}
