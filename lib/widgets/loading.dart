import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:himalayan_delights/utils/safe_size.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        height: getDeviceExactHeight(20, mediaQ),
        width: getDeviceExactWidth(20, mediaQ),
        child: const CircularProgressIndicator(
          color: AppColor.headerColor,
        ),
      ),
    );
  }
}
