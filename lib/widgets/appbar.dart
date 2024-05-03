import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../themes/color_theme.dart';
import 'label_text.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColor.searchColor, // Navigation bar
      statusBarColor: AppColor.darkBackgroundColor, // Status bar
    ),
    scrolledUnderElevation: 0.0,
    leading: InkWell(
        onTap: () {
          context.go('/');
        },
        child: Icon(Icons.arrow_back_ios_outlined,
            size: 20, color: AppColor.primaryColor)),
    title: const LabelText(text: 'Categories', size: 22),
  );
}
