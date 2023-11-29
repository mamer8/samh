import '../app_export.dart';
import '../utils/cupertino_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.child}) : super(key: key);
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kRadius),
              bottomRight: Radius.circular(kRadius))),
      child: child,
    );
  }
}
