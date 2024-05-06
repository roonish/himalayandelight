import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';

class RatingStar extends StatelessWidget {
  final int starCount;
  const RatingStar({
    super.key,
    required this.starCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          starCount,
          (index) => const Icon(
                Icons.star,
                color: AppColor.ratingColor,
                size: 12,
              )),
    );
  }
}
