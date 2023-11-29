
import '../../../../../../core/app_export.dart';

class FlightType extends StatelessWidget {
  const FlightType({
    super.key,
    this.isSelected = false, required this.text,
  });
  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: isSelected
                ? BoxDecoration(
              color:ColorManager.primaryBackground,
                borderRadius: BorderRadius.all(Radius.circular(kRadius)),
                )
                : BoxDecoration(
              color:ColorManager.primary,
              borderRadius: BorderRadius.all(Radius.circular(kRadius)),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(kMargin),
                child: Text(
                  text,
                  style: getBoldStyle(
                      fontSize: FontSize.s14,
                      color:
                      isSelected ? ColorManager.primary : ColorManager.primaryBackground,
                      ),
                ) )),

      ],
    );
  }
}
