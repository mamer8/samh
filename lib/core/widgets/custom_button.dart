
import '../app_export.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;


  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.symmetric(vertical: .5 * kMargin),
        child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ClipRRect(
              borderRadius:  BorderRadius.all(Radius.circular(kRadiusMore)),
              child: MaterialButton(
                  onPressed:onPressed,
                  color:  ColorManager.primary,
                  child: Text(
                    text!,
                    style: getBoldStyle(
                        color:  ColorManager.primaryBackground,
                        fontSize: FontSize.s16),
                  )),
            )));
  }
}
