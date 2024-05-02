import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../themes/color_theme.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColor.searchColor, // Navigation bar
      statusBarColor: AppColor.darkBackgroundColor, // Status bar
    ),
    leadingWidth: MediaQuery.of(context).size.width / 1.2,
    scrolledUnderElevation: 0.0,
    leading: const Padding(
      padding: EdgeInsets.only(left: 20, top: 9, bottom: 5),
      child: TextField(
        style: TextStyle(color: AppColor.textColor),
        decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              size: 25,
            ),
            suffixIcon: Icon(
              Icons.mic_none,
              size: 25,
            )),
        maxLines: 1,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 9, bottom: 5, right: 10),
        child: IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_none)),
      )
    ],
  );
}
