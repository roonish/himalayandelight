import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../themes/color_theme.dart';
import 'label_text.dart';

AppBar appBar(
  BuildContext context, {
  required String title,
  bool showAction = false,
  bool showLeadingIcon = true,
}) {
  return AppBar(
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColor.searchColor, // Navigation bar
      statusBarColor: AppColor.darkBackgroundColor, // Status bar
    ),
    scrolledUnderElevation: 0.0,
    leading: showLeadingIcon
        ? InkWell(
            onTap: () {
              context.go('/');
            },
            child: Icon(Icons.arrow_back_ios_outlined,
                size: 20, color: AppColor.primaryColor))
        : const SizedBox(),
    title: LabelText(text: title, size: 22),
    actions: [
      showAction
          ? InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.notifications_none,
                    size: 25, color: AppColor.primaryColor),
              ))
          : const SizedBox()
    ],
  );
}
