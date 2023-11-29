
import '../../../../../../core/app_export.dart';

class PassengerType extends StatelessWidget {
  const PassengerType({
    super.key,
    this.isSelected = false, required this.text,
  });
  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding:  EdgeInsets.symmetric(
              horizontal: kPadding, vertical: 4),
          decoration: isSelected
              ? BoxDecoration(
            color: ColorManager.primary,
            border:
            Border.all(color: ColorManager.primary, width: 2),
            borderRadius: BorderRadius.circular(8),

          )
              : BoxDecoration(
            color: ColorManager.primaryBackground,
            border:
            Border.all(color: ColorManager.primary, width: 2),
            borderRadius:  BorderRadius.circular(8),

          ),
          child: Text(
            text,
            style: getBoldStyle(
              fontSize: FontSize.s12,
              color: isSelected ? ColorManager.primaryBackground : ColorManager.primary,
            ),
          )),
    );
  }
}
