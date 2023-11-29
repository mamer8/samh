

import '../app_export.dart';


class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsetsDirectional.symmetric(vertical: kPadding),
      child: Center(
        child: CircularProgressIndicator(color: ColorManager.primary),
      ),
    );
  }
}
