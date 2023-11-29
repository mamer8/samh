import 'package:flutter/material.dart';


class CustomImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final Color? color;
  const CustomImage({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: width,
      height: height,
      color: color,
      fit: BoxFit.contain,

      image,
    );
  }
}

