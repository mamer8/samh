import '../../../../../../core/app_export.dart';
import 'custom_appbar_text.dart';

class CustomAppBarColumn extends StatelessWidget {
  const CustomAppBarColumn({
    super.key, required this.short, required this.text,
  });
  final String short;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(short,style: getBoldStyle(color: ColorManager.primaryBackground),),
        CustomAppBarText(text:text),

      ],);
  }
}
