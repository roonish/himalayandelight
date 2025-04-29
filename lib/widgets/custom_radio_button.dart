import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;

  const CustomRadioButton({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: isSelected ? AppColor.primaryColor : AppColor.headerColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? AppColor.primaryColor : AppColor.headerColor,
          width: 2,
        ),
      ),
    );
  }
}
