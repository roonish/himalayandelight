import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:himalayan_delights/utils/safe_size.dart';
import 'package:himalayan_delights/widgets/app_button.dart';
import 'package:himalayan_delights/widgets/label_text.dart';

class AppDialogBox extends StatelessWidget {
  final VoidCallback onConfirm;
  final String content;

  const AppDialogBox(
      {super.key, required this.onConfirm, required this.content});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQD = MediaQuery.of(context);
    Size safeAreaSize = getSafeAreaSize(mediaQD);
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      actionsPadding: const EdgeInsets.only(bottom: 15, right: 20),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.56))),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LabelText(
            text: "Are you sure?",
          ),
          Icon(
            Icons.warning_amber_sharp,
            color: AppColor.primaryColor,
          ),
        ],
      ),
      content: LabelText(
        text: content,
        fontWeight: FontWeight.w400,
        size: 16,
        maxLine: 3,
      ),
      actions: <Widget>[
        TextButton(
          child: const LabelText(
            text: "Cancel",
            fontWeight: FontWeight.w400,
            size: 14,
          ),
          onPressed: () => context.pop(),
        ),
        AppButton(
            color: AppColor.primaryColor,
            text: "Proceed",
            fontSize: 14,
            verticalPadding: 13,
            width: getDeviceExactWidth(141, safeAreaSize),
            ontap: onConfirm),
      ],
    );
  }
}
