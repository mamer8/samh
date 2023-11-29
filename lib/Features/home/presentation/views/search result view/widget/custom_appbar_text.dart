import '../../../../../../core/app_export.dart';

class CustomAppBarText extends StatelessWidget {
  const CustomAppBarText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: getRegularStyle(color: ColorManager.primaryBackground),);
  }
}
