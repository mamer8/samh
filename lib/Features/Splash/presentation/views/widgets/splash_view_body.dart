
import 'package:samh_task/Features/home/presentation/views/home%20view/home_view.dart';

import '../../../../../core/app_export.dart';

import 'sliding_image.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody( {Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  bool isLoaded = false;
  @override
  void initState() {
    initSlidingAnimation();

    navigateToHome();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: SlidingImage(slidingAnimation: slidingAnimation));
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, -50), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() async {
    Future.delayed(
      const Duration(seconds: 4),
      () {

        navigateAndReplaceWithAnimation(context,  HomeView());}







    );
  }

}
