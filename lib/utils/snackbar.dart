import 'package:flutter/material.dart';
import '../themes/color_theme.dart';

class SnackBarHelper {
  static void showError(
    BuildContext context,
    String message, {
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColor.primaryColor,
        content: Text(
          message,
          style: const TextStyle(color: AppColor.blackColor),
        ),
        action: action,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // static void showMessage(
  //   String message, {
  //   BuildContext? ctxt,
  //   SnackBarAction? action,
  // }) {
  //   final BuildContext context = ctxt ?? DI().getRootScaffoldContext();

  //   ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       backgroundColor: AppColor.snackbarSuccess,
  //       content: Text(
  //         message,
  //         style:const TextStyle(color: AppColor.blackColor),
  //       ),
  //       action: action,
  //       duration: const Duration(seconds: 3),
  //     ),
  //   );
  // }
}
