import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: AppImages.logo,
          );
        });
  }
}
