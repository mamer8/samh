
import 'package:dotted_border/dotted_border.dart';

import '../app_export.dart';

class CustomDottedContainer extends StatelessWidget {
  const CustomDottedContainer({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(kRadius),
      color: ColorManager.primary,
      padding: EdgeInsets.all(kMargin),
      child:child,
    );
  }
}