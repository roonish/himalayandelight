
import 'package:flutter/material.dart';
import 'constants.dart';

Size getSafeAreaSize(MediaQueryData mediaQD) {
  final screenWidth = mediaQD.size.width;
  final screenHeight = mediaQD.size.height;

  final statusBarHeight = mediaQD.padding.top;
  final bottomSpacing = mediaQD.padding.bottom;

  final edgeInsets = mediaQD.viewInsets;

  return Size(
    screenWidth - edgeInsets.left - edgeInsets.right,
    screenHeight -
        statusBarHeight -
        bottomSpacing -
        edgeInsets.top -
        edgeInsets.bottom,
  );
}

double getDeviceExactWidth(double sizeInDesign, Size safeAreaSize) {
  return (sizeInDesign / kDesignScreenWidth) * safeAreaSize.width;
}

double getDeviceExactHeight(double sizeInDesign, Size safeAreaSize) {
  return (sizeInDesign / kDesignScreenHeight) * safeAreaSize.height;
}
