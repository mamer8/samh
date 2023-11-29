import 'package:samh_task/core/app_export.dart';

class AppImages {
  static const logo = CustomImage(
    image: AssetsData.logo,
  );

  static CustomImage bluePlane = CustomImage(
    image: AssetsData.plane,
    color: ColorManager.primary,
  );
  static CustomImage whitePlane = CustomImage(
    image: AssetsData.plane,
    color: ColorManager.primaryBackground,
  );
  static CustomImage bluePlaneAR = CustomImage(
    image: AssetsData.planeAR,
    color: ColorManager.primary,
  );
  static CustomImage whitePlaneAR = CustomImage(
    image: AssetsData.planeAR,
    color: ColorManager.primaryBackground,
  );
  static CircleAvatar profile =
      CircleAvatar(radius: 20, backgroundImage: AssetImage(AssetsData.profile));

  static CustomImage filter = CustomImage(
    image: AssetsData.filter,
    height: 25,
    width: 25,
    color: ColorManager.primaryGrey,
  );
}
