import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const Responsive(
      {super.key, required this.mobile, required this.tablet, required this.web});
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 720;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1200 &&
        MediaQuery.of(context).size.width >= 720;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return web;
      } else if (constraints.maxWidth >= 720) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
