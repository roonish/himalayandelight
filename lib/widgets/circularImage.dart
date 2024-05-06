import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:himalayan_delights/widgets/app_image.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.image,
    this.radius = 30,
  });

  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColor.darkBackgroundColor,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: AppImage(
            image: image,
          )),
    );
  }
}
